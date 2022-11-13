import configparser
import importlib.resources
import sys
import typing

import license_expression


MAPPING: typing.Dict[str, str] = {}


def load_license_mapping() -> None:
    conf = configparser.ConfigParser(comment_prefixes=("#",),
                                     delimiters=("=",),
                                     empty_lines_in_values=False,
                                     interpolation=None)

    if sys.version_info >= (3, 9):
        f = ((importlib.resources.files(__package__) / "license-mapping.conf")
             .open("r"))

    else:
        f = importlib.resources.open_text(__package__, "license-mapping.conf")

    with f:
        conf.read_file(f)

    MAPPING.update((k.lower(), v) for k, v in conf.items("spdx-to-ebuild"))


def symbol_to_ebuild(license_symbol: license_expression.LicenseSymbol) -> str:
    return MAPPING[str(license_symbol).lower()]


def spdx_to_ebuild(spdx: license_expression.Renderable) -> str:
    """
    Convert SPDX license expression to ebuild license string.
    """
    def sub(x: license_expression.LicenseExpression, in_or: bool
            ) -> typing.Generator[str, None, None]:
        if isinstance(x, license_expression.AND):
            if in_or:
                yield "("
            for y in x.args:
                yield from sub(y, in_or=False)
            if in_or:
                yield ")"
        elif isinstance(x, license_expression.OR):
            if not in_or:
                yield "|| ("
            for y in x.args:
                yield from sub(y, in_or=True)
            if not in_or:
                yield ")"
        elif isinstance(x, (license_expression.LicenseSymbol,
                            license_expression.LicenseWithExceptionSymbol)):
            def is_pure_or(symbols: typing.Iterable[str]) -> bool:
                """
                Test whether symbols is a pure any-of clause "|| ( ... )"
                """

                it = iter(symbols)
                # it must start with a "|| ("
                if next(it) != "||":
                    return False
                if next(it) != "(":
                    return False
                level = 1
                for x in it:
                    if x == ")":
                        level -= 1
                    elif level == 0:
                        # if we have anything past top-level ")", we have
                        # an AND-expression
                        return False
                    elif x == "(":
                        level += 1
                return True

            mapped = symbol_to_ebuild(x).split()
            if len(mapped) > 1 and in_or:
                if is_pure_or(mapped):
                    # avoid nesting || ( || ( ... ) )
                    yield from mapped[2:-1]
                else:
                    # if we are inside || ( ... ), we need explicit ( ... )
                    # for AND-groups
                    yield "("
                    yield from mapped
                    yield ")"
            else:
                # single replacement item can always go inline,
                # as well as AND_groups inside an AND group
                yield from mapped
        else:
            assert False, f"Unknown type {type(x)}"

    return " ".join(sub(spdx, in_or=False))
