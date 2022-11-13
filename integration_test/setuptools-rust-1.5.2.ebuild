# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.1.0

EAPI=8

CRATES="
	autocfg-1.1.0
	bitflags-1.3.2
	byteorder-1.4.3
	cfg-if-1.0.0
	convert_case-0.4.0
	cssparser-0.27.2
	cssparser-macros-0.6.0
	derive_more-0.99.17
	dtoa-0.4.8
	dtoa-short-0.3.3
	futf-0.1.5
	fxhash-0.2.1
	getrandom-0.1.16
	html5ever-0.25.1
	indoc-1.0.4
	instant-0.1.12
	itoa-0.4.8
	kuchiki-0.8.1
	lazy_static-1.4.0
	libc-0.2.121
	lock_api-0.4.6
	log-0.4.14
	mac-0.1.1
	markup5ever-0.10.1
	matches-0.1.9
	memoffset-0.6.5
	new_debug_unreachable-1.0.4
	nodrop-0.1.14
	once_cell-1.10.0
	parking_lot-0.11.2
	parking_lot_core-0.8.5
	phf-0.8.0
	phf_codegen-0.8.0
	phf_generator-0.8.0
	phf_macros-0.8.0
	phf_shared-0.10.0
	phf_shared-0.8.0
	ppv-lite86-0.2.16
	precomputed-hash-0.1.1
	proc-macro-hack-0.5.19
	proc-macro2-1.0.36
	pyo3-0.17.1
	pyo3-build-config-0.17.1
	pyo3-ffi-0.17.1
	pyo3-macros-0.17.1
	pyo3-macros-backend-0.17.1
	quote-1.0.16
	rand-0.7.3
	rand_chacha-0.2.2
	rand_core-0.5.1
	rand_hc-0.2.0
	rand_pcg-0.2.1
	redox_syscall-0.2.11
	rustc_version-0.4.0
	scopeguard-1.1.0
	selectors-0.22.0
	semver-1.0.6
	serde-1.0.136
	servo_arc-0.1.1
	siphasher-0.3.10
	smallvec-1.8.0
	stable_deref_trait-1.2.0
	string_cache-0.8.3
	string_cache_codegen-0.5.1
	syn-1.0.89
	target-lexicon-0.12.3
	tendril-0.4.3
	thin-slice-0.1.1
	unicode-xid-0.2.2
	unindent-0.1.8
	utf-8-0.7.6
	wasi-0.9.0+wasi-snapshot-preview1
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="
	$(cargo_crate_uris)
"

LICENSE=""
# Dependent crate licenses
LICENSE+=" Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD MIT MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
