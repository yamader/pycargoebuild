# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.0

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aead@0.4.3
	aead@0.5.2
	aes-gcm-siv@0.11.1
	aes-gcm@0.9.2
	aes@0.7.5
	aes@0.8.3
	aho-corasick@1.1.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anes@0.1.6
	anstream@0.6.5
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anstyle@1.0.4
	anyhow@1.0.75
	argon2@0.5.2
	array-concat@0.5.2
	arrayref@0.3.7
	arrayvec@0.7.4
	asn1@0.15.5
	asn1_derive@0.15.5
	assert_matches@1.5.0
	async-compression@0.4.5
	async-trait@0.1.74
	autocfg@1.1.0
	backtrace@0.3.69
	base64@0.21.5
	base64ct@1.6.0
	bincode@1.3.3
	bindgen@0.66.1
	bit-set@0.5.3
	bit-vec@0.6.3
	bitflags@1.3.2
	bitflags@2.4.1
	bitstream-io@1.8.0
	blake2@0.10.6
	block-buffer@0.10.4
	block-padding@0.3.3
	bumpalo@3.14.0
	bytemuck@1.14.0
	byteorder@1.5.0
	bytes@1.5.0
	cast@0.3.0
	cbc@0.1.2
	cc@1.0.83
	cesu8@1.1.0
	cexpr@0.6.0
	cfg-if@1.0.0
	chacha20@0.8.2
	chacha20@0.9.1
	chacha20poly1305@0.10.1
	chacha20poly1305@0.9.1
	chrono@0.4.31
	ciborium-io@0.2.1
	ciborium-ll@0.2.1
	ciborium@0.2.1
	cipher@0.3.0
	cipher@0.4.4
	clang-sys@1.6.1
	clap@4.4.11
	clap_builder@4.4.11
	clap_derive@4.4.7
	clap_lex@0.6.0
	cmake@0.1.48
	colorchoice@1.0.0
	combine@4.6.6
	convert_case@0.4.0
	core-foundation-sys@0.8.4
	core-foundation@0.9.3
	cpufeatures@0.2.11
	crc32fast@1.3.2
	criterion-plot@0.5.0
	criterion@0.5.1
	crossbeam-deque@0.8.3
	crossbeam-epoch@0.9.15
	crossbeam-utils@0.8.16
	crypto-common@0.1.6
	ctr@0.7.0
	ctr@0.9.2
	darling@0.14.4
	darling_core@0.14.4
	darling_macro@0.14.4
	data-encoding@2.4.0
	derive-where@1.2.7
	derive_builder@0.12.0
	derive_builder_core@0.12.0
	derive_builder_macro@0.12.0
	derive_more@0.99.17
	digest@0.10.7
	displaydoc@0.2.4
	downcast-rs@1.2.0
	dunce@1.0.4
	dyn-clonable-impl@0.9.0
	dyn-clonable@0.9.0
	dyn-clone@1.0.14
	either@1.9.0
	encoding_rs@0.8.33
	env_logger@0.10.0
	equivalent@1.0.1
	errno@0.3.5
	fastrand@2.0.1
	fiat-crypto@0.2.5
	fixedbitset@0.4.2
	flate2@1.0.28
	fnv@1.0.7
	foreign-types-macros@0.2.3
	foreign-types-shared@0.3.1
	foreign-types@0.5.0
	form_urlencoded@1.2.0
	fs_extra@1.3.0
	fslock@0.2.1
	futures-channel@0.3.29
	futures-core@0.3.29
	futures-executor@0.3.29
	futures-io@0.3.29
	futures-macro@0.3.29
	futures-sink@0.3.29
	futures-task@0.3.29
	futures-util@0.3.29
	futures@0.3.29
	generic-array@0.14.7
	getrandom@0.2.10
	ghash@0.4.4
	ghash@0.5.0
	gimli@0.28.0
	glob@0.3.1
	h2@0.3.21
	half@1.8.2
	hashbrown@0.12.3
	hashbrown@0.14.2
	headers-core@0.2.0
	headers@0.3.9
	heck@0.3.3
	heck@0.4.1
	hermit-abi@0.3.3
	hex-literal@0.4.1
	hex@0.4.3
	hkdf@0.12.3
	hmac@0.12.1
	home@0.5.5
	http-body-util@0.1.0-rc.3
	http-body@0.4.5
	http-body@1.0.0-rc.2
	http@0.2.9
	httparse@1.8.0
	httpdate@1.0.3
	humantime@2.1.0
	hyper@0.14.27
	hyper@1.0.0-rc.4
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.58
	ident_case@1.0.1
	idna@0.4.0
	indexmap@1.9.3
	indexmap@2.1.0
	inout@0.1.3
	is-terminal@0.4.9
	itertools@0.10.5
	itertools@0.11.0
	itoa@1.0.9
	jni-sys@0.3.0
	jni@0.21.1
	jobserver@0.1.27
	js-sys@0.3.65
	lazy_static@1.4.0
	lazycell@1.3.0
	libc@0.2.149
	libloading@0.6.7
	libloading@0.7.4
	libm@0.2.8
	linkme-impl@0.3.17
	linkme@0.3.17
	linux-raw-sys@0.4.10
	lock_api@0.4.11
	log-panics@2.1.0
	log@0.4.20
	mediasan-common@0.5.1
	memchr@2.6.4
	memoffset@0.9.0
	mime@0.3.17
	mime_guess@2.0.4
	minimal-lexical@0.2.1
	miniz_oxide@0.7.1
	mio@0.8.9
	mp4san-derive@0.5.1
	mp4san@0.5.1
	multer@2.1.0
	multimap@0.8.3
	neon-build@0.10.1
	neon-macros@0.10.1
	neon-runtime@0.10.1
	neon@0.10.1
	nom@7.1.3
	nonzero_ext@0.3.0
	num-integer@0.1.45
	num-traits@0.2.17
	num_cpus@1.16.0
	num_enum@0.6.1
	num_enum_derive@0.6.1
	object@0.32.1
	once_cell@1.18.0
	oorandom@11.1.3
	opaque-debug@0.3.0
	openssl-probe@0.1.5
	parking_lot@0.12.1
	parking_lot_core@0.9.9
	partial-default-derive@0.1.0
	partial-default@0.1.0
	password-hash@0.5.0
	paste@1.0.14
	peeking_take_while@0.1.2
	percent-encoding@2.3.0
	petgraph@0.6.4
	pin-project-internal@1.1.3
	pin-project-lite@0.2.13
	pin-project@1.1.3
	pin-utils@0.1.0
	platforms@3.2.0
	plotters-backend@0.3.5
	plotters-svg@0.3.5
	plotters@0.3.5
	poly1305@0.7.2
	poly1305@0.8.0
	polyval@0.5.3
	polyval@0.6.1
	ppv-lite86@0.2.17
	pqcrypto-internals@0.2.5
	pqcrypto-kyber@0.7.9
	pqcrypto-kyber@0.8.0
	pqcrypto-traits@0.3.5
	prettyplease@0.2.15
	proc-macro-crate@1.3.1
	proc-macro2@1.0.69
	proptest@1.3.1
	prost-build@0.12.1
	prost-derive@0.12.1
	prost-types@0.12.1
	prost@0.12.1
	quick-error@1.2.3
	quote@1.0.33
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rand_xorshift@0.3.0
	rayon-core@1.12.0
	rayon@1.8.0
	redox_syscall@0.4.1
	regex-automata@0.4.3
	regex-syntax@0.7.5
	regex-syntax@0.8.2
	regex@1.10.2
	ring@0.17.5
	rustc-demangle@0.1.23
	rustc-hash@1.1.0
	rustc_version@0.4.0
	rustix@0.38.21
	rustls-native-certs@0.6.3
	rustls-pemfile@1.0.3
	rustls-webpki@0.101.7
	rustls@0.21.8
	rusty-fork@0.3.0
	ryu@1.0.15
	same-file@1.0.6
	schannel@0.1.22
	scoped-tls@1.0.1
	scopeguard@1.2.0
	sct@0.7.1
	security-framework-sys@2.9.1
	security-framework@2.9.2
	semver-parser@0.7.0
	semver@0.9.0
	semver@1.0.20
	serde@1.0.190
	serde_derive@1.0.190
	serde_json@1.0.108
	serde_urlencoded@0.7.1
	sha1@0.10.6
	sha2@0.10.8
	shlex@1.2.0
	signal-hook-registry@1.4.1
	slab@0.4.9
	smallvec@1.11.1
	snow@0.9.3
	socket2@0.4.10
	socket2@0.5.5
	spin@0.9.8
	static_assertions@1.1.0
	strsim@0.10.0
	subtle@2.5.0
	syn-mid@0.5.4
	syn@1.0.109
	syn@2.0.38
	tempfile@3.8.1
	termcolor@1.3.0
	test-case-core@3.3.1
	test-case-macros@3.3.1
	test-case@3.3.1
	test-log-macros@0.2.14
	test-log@0.2.14
	thiserror-impl@1.0.50
	thiserror@1.0.50
	tinytemplate@1.2.1
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-macros@2.1.0
	tokio-rustls@0.24.1
	tokio-stream@0.1.14
	tokio-tungstenite@0.19.0
	tokio-tungstenite@0.20.1
	tokio-util@0.7.10
	tokio@1.33.0
	toml_datetime@0.6.5
	toml_edit@0.19.15
	tower-service@0.3.2
	tracing-core@0.1.32
	tracing@0.1.40
	try-lock@0.2.4
	tungstenite@0.19.0
	tungstenite@0.20.1
	typenum@1.17.0
	unarray@0.1.4
	unicase@2.7.0
	unicode-bidi@0.3.13
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode-segmentation@1.10.1
	universal-hash@0.4.0
	universal-hash@0.5.1
	untrusted@0.9.0
	url@2.4.1
	utf-8@0.7.6
	utf8parse@0.2.1
	uuid@1.5.0
	variant_count@1.1.0
	version_check@0.9.4
	wait-timeout@0.2.0
	walkdir@2.4.0
	want@0.3.1
	warp@0.3.6
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.88
	wasm-bindgen-macro-support@0.2.88
	wasm-bindgen-macro@0.2.88
	wasm-bindgen-shared@0.2.88
	wasm-bindgen@0.2.88
	web-sys@0.3.65
	webpsan@0.5.1
	which@4.4.2
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.51.1
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	winnow@0.5.18
	x25519-dalek@2.0.0
	zeroize@1.6.0
	zeroize_derive@1.4.2
"

declare -A GIT_CRATES=(
	[boring-sys]='https://github.com/signalapp/boring;8245063ae6eb97d909982b89fad45bb7f0a2a1a0;boring-%commit%/boring-sys'
	[boring]='https://github.com/signalapp/boring;8245063ae6eb97d909982b89fad45bb7f0a2a1a0;boring-%commit%/boring'
	[curve25519-dalek-derive]='https://github.com/signalapp/curve25519-dalek;a12ab4e58455bb3dc7cd73a0f9f3443507b2854b;curve25519-dalek-%commit%/curve25519-dalek-derive'
	[curve25519-dalek]='https://github.com/signalapp/curve25519-dalek;a12ab4e58455bb3dc7cd73a0f9f3443507b2854b;curve25519-dalek-%commit%/curve25519-dalek'
	[tokio-boring]='https://github.com/signalapp/boring;8245063ae6eb97d909982b89fad45bb7f0a2a1a0;boring-%commit%/tokio-boring'
)

inherit cargo

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="
	${CARGO_CRATE_URIS}
"

LICENSE="AGPL-3"
# Dependent crate licenses
LICENSE+=" AGPL-3 Apache-2.0 BSD-2 BSD ISC MIT Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"
