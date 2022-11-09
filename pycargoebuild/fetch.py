import hashlib
import subprocess
from pathlib import Path

from pycargoebuild.cargo import Crates


def fetch_crates(crates: Crates, distdir: Path) -> None:
    """
    Fetch specified crates into distdir
    """

    distdir.mkdir(parents=True, exist_ok=True)
    for crate in crates:
        path = distdir / crate.filename
        if not path.exists():
            subprocess.check_call(
                ["wget", "-O", str(path), crate.crates_io_url])


def verify_crates(crates: Crates, distdir: Path) -> None:
    """
    Verify checksums of crates fetched into distdir
    """

    buffer = bytearray(128 * 1024)
    mv = memoryview(buffer)
    for crate in crates:
        path = distdir / crate.filename
        with open(path, "rb", buffering=0) as f:
            hasher = hashlib.sha256()
            while True:
                rd = f.readinto(mv)
                if rd == 0:
                    break
                hasher.update(mv[:rd])
            if hasher.hexdigest() != crate.checksum:
                raise RuntimeError(
                    f"checksum mismatch for {path}, got: "
                    f"{hasher.hexdigest()}, exp: {crate.checksum}")