# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.4

EAPI=8

CRATES="
	addr2line@0.22.0
	adler@1.0.2
	aes@0.7.5
	aho-corasick@1.1.3
	aligned-vec@0.5.0
	alloc-no-stdlib@2.0.4
	alloc-stdlib@0.2.2
	ammonia@3.3.0
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anyhow@1.0.86
	arbitrary@1.3.2
	arc-swap@1.7.1
	arg_enum_proc_macro@0.3.4
	arrayvec@0.7.4
	ashpd@0.9.1
	async-broadcast@0.7.1
	async-channel@2.3.1
	async-compression@0.4.12
	async-executor@1.13.0
	async-fs@2.1.2
	async-io@2.3.3
	async-lock@3.4.0
	async-net@2.0.0
	async-process@2.2.3
	async-recursion@1.1.1
	async-signal@0.2.9
	async-task@4.7.1
	async-trait@0.1.81
	atomic-waker@1.1.2
	autocfg@1.3.0
	av1-grain@0.2.3
	avif-serialize@0.8.1
	backtrace@0.3.73
	base64@0.21.7
	base64@0.22.1
	bigdecimal@0.4.5
	bit_field@0.10.2
	bitflags@1.3.2
	bitflags@2.6.0
	bitstream-io@2.5.0
	block-buffer@0.10.4
	block-buffer@0.9.0
	block-modes@0.8.1
	block-padding@0.2.1
	block@0.1.6
	blocking@1.6.1
	brotli-decompressor@4.0.1
	brotli@6.0.0
	built@0.7.4
	bumpalo@3.16.0
	bytemuck@1.16.1
	byteorder-lite@0.1.0
	byteorder@1.5.0
	bytes@1.6.1
	bytesize@1.3.0
	cairo-rs@0.20.0
	cairo-sys-rs@0.20.0
	cc@1.1.7
	cfg-expr@0.15.8
	cfg-if@1.0.0
	cfg_aliases@0.2.1
	chrono@0.4.38
	cipher@0.3.0
	color-backtrace@0.6.1
	color_quant@1.1.0
	commafeed_api@0.2.1
	concurrent-queue@2.5.0
	cookie@0.18.1
	cookie_store@0.21.0
	core-foundation-sys@0.8.6
	core-foundation@0.9.4
	cpufeatures@0.2.12
	crc-any@2.5.0
	crc32fast@1.4.2
	crossbeam-channel@0.5.13
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.20
	crunchy@0.2.2
	crypto-common@0.1.6
	darling@0.20.10
	darling_core@0.20.10
	darling_macro@0.20.10
	data-encoding@2.6.0
	debug-helper@0.3.13
	deranged@0.3.11
	derivative@2.2.0
	des@0.7.0
	destructure_traitobject@0.2.0
	diesel@2.2.2
	diesel_derives@2.2.2
	diesel_migrations@2.2.0
	diesel_table_macro_syntax@0.2.0
	diffus-derive@0.10.0
	diffus@0.10.0
	digest@0.10.7
	digest@0.9.0
	dirs-sys@0.4.1
	dirs@5.0.1
	dsl_auto_type@0.1.2
	either@1.13.0
	encoding_rs@0.8.34
	endi@1.1.0
	entities@1.0.1
	enum-as-inner@0.6.0
	enumflags2@0.7.10
	enumflags2_derive@0.7.10
	equivalent@1.0.1
	errno@0.3.9
	escaper@0.1.1
	event-listener-strategy@0.5.2
	event-listener@5.3.1
	exr@1.72.0
	eyre@0.6.12
	fastrand@2.1.0
	fdeflate@0.3.4
	feed-rs@2.1.0
	feedbin_api@0.3.0
	feedly_api@0.6.0
	fever_api@0.5.0
	field-offset@0.3.6
	flate2@1.0.30
	flume@0.11.0
	fnv@1.0.7
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.1
	futf@0.1.5
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-lite@2.3.0
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	futures@0.3.30
	gdk-pixbuf-sys@0.20.0
	gdk-pixbuf@0.20.0
	gdk4-sys@0.9.0
	gdk4@0.9.0
	generic-array@0.14.7
	getrandom@0.2.15
	gettext-rs@0.7.0
	gettext-sys@0.21.3
	gif@0.13.1
	gimli@0.29.0
	gio-sys@0.20.0
	gio@0.20.0
	glib-macros@0.20.0
	glib-sys@0.20.0
	glib@0.20.0
	gobject-sys@0.20.0
	graphene-rs@0.20.0
	graphene-sys@0.20.0
	greader_api@0.5.0
	gsk4-sys@0.9.0
	gsk4@0.9.0
	gstreamer-sys@0.23.0
	gstreamer@0.23.0
	gtk4-macros@0.9.0
	gtk4-sys@0.9.0
	gtk4@0.9.0
	h2@0.4.5
	half@2.4.1
	hard-xml-derive@1.36.0
	hard-xml@1.36.0
	hashbrown@0.14.5
	heck@0.4.1
	heck@0.5.0
	hermit-abi@0.3.9
	hermit-abi@0.4.0
	hex@0.4.3
	hickory-proto@0.24.1
	hickory-resolver@0.24.1
	hostname@0.3.1
	html2pango@0.6.0
	html5ever@0.26.0
	http-body-util@0.1.2
	http-body@1.0.1
	http@1.1.0
	httparse@1.9.4
	humantime@2.1.0
	hyper-rustls@0.27.2
	hyper-tls@0.6.0
	hyper-util@0.1.6
	hyper@1.4.1
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.60
	ident_case@1.0.1
	idna@0.3.0
	idna@0.4.0
	idna@0.5.0
	image-webp@0.1.3
	image@0.25.2
	imgref@1.10.1
	indenter@0.3.3
	indexmap@2.2.6
	interpolate_name@0.2.4
	ipconfig@0.3.2
	ipnet@2.9.0
	ipnetwork@0.20.0
	itertools@0.10.5
	itertools@0.12.1
	itertools@0.13.0
	itoa@1.0.11
	javascriptcore6-sys@0.4.0
	javascriptcore6@0.4.0
	jetscii@0.5.3
	jobserver@0.1.32
	jpeg-decoder@0.3.1
	js-sys@0.3.69
	lazy_static@1.5.0
	lebe@0.5.2
	libadwaita-sys@0.7.0
	libadwaita@0.7.0
	libc@0.2.155
	libfuzzer-sys@0.4.7
	libm@0.2.8
	libredox@0.1.3
	libsqlite3-sys@0.29.0
	libxml@0.3.3
	linked-hash-map@0.5.6
	linkify@0.9.0
	linux-raw-sys@0.4.14
	locale_config@0.3.0
	lock_api@0.4.12
	log-mdc@0.1.0
	log4rs@1.3.0
	log@0.4.22
	loop9@0.1.5
	lru-cache@0.1.2
	mac@0.1.1
	magic-crypt@3.1.13
	malloc_buf@0.0.6
	maplit@1.0.2
	markup5ever@0.11.0
	markup5ever_rcdom@0.2.0
	match_cfg@0.1.0
	maybe-rayon@0.1.1
	md-5@0.9.1
	md5@0.7.0
	mediatype@0.19.18
	memchr@2.7.4
	memoffset@0.9.1
	migrations_internals@2.2.0
	migrations_macros@2.2.0
	mime@0.3.17
	mime_guess@2.0.5
	miniflux_api@0.7.1
	minimal-lexical@0.2.1
	miniz_oxide@0.7.4
	mio@1.0.1
	moka@0.12.8
	muldiv@1.0.1
	nanohtml2text@0.1.4
	native-tls@0.2.12
	new_debug_unreachable@1.0.6
	nextcloud_news_api@0.4.0
	nix@0.29.0
	nom@7.1.3
	noop_proc_macro@0.3.0
	num-bigint@0.4.6
	num-conv@0.1.0
	num-derive@0.4.2
	num-integer@0.1.46
	num-rational@0.4.2
	num-traits@0.2.19
	num_cpus@1.16.0
	obfstr@0.4.3
	objc-foundation@0.1.1
	objc@0.2.7
	objc_id@0.1.1
	object@0.36.2
	once_cell@1.19.0
	opaque-debug@0.3.1
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.103
	openssl@0.10.66
	opml@1.1.6
	option-ext@0.2.0
	option-operations@0.5.0
	ordered-float@2.10.1
	ordered-stream@0.2.0
	pango-sys@0.20.0
	pango@0.20.0
	parking@2.2.0
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	paste@1.0.15
	percent-encoding@2.3.1
	phf@0.10.1
	phf_codegen@0.10.0
	phf_generator@0.10.0
	phf_shared@0.10.0
	pin-project-internal@1.1.5
	pin-project-lite@0.2.14
	pin-project@1.1.5
	pin-utils@0.1.0
	piper@0.2.3
	pkg-config@0.3.30
	png@0.17.13
	polling@3.7.2
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	precomputed-hash@0.1.1
	proc-macro-crate@3.1.0
	proc-macro2@1.0.86
	profiling-procmacros@1.0.15
	profiling@1.0.15
	psl-types@2.0.11
	publicsuffix@2.2.3
	qoi@0.4.1
	quanta@0.12.3
	quick-error@1.2.3
	quick-error@2.0.1
	quick-xml@0.36.1
	quote@1.0.36
	r2d2@0.8.10
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	random_color@0.8.0
	rav1e@0.7.1
	ravif@0.11.9
	raw-cpuid@11.1.0
	rayon-core@1.12.1
	rayon@1.10.0
	rc-writer@1.1.10
	redox_syscall@0.5.3
	redox_users@0.4.5
	regex-automata@0.4.7
	regex-syntax@0.8.4
	regex@1.10.5
	reqwest@0.12.5
	resolv-conf@0.7.0
	rgb@0.8.45
	ring@0.17.8
	rust-embed-impl@8.5.0
	rust-embed-utils@8.5.0
	rust-embed@8.5.0
	rustc-demangle@0.1.24
	rustc_version@0.4.0
	rustix@0.38.34
	rustls-pemfile@2.1.2
	rustls-pki-types@1.7.0
	rustls-webpki@0.102.6
	rustls@0.23.12
	ryu@1.0.18
	same-file@1.0.6
	sanitize-filename@0.5.0
	schannel@0.1.23
	scheduled-thread-pool@0.2.7
	scopeguard@1.2.0
	security-framework-sys@2.11.1
	security-framework@2.11.1
	semver@1.0.23
	serde-value@0.7.0
	serde@1.0.204
	serde_derive@1.0.204
	serde_json@1.0.121
	serde_repr@0.1.19
	serde_spanned@0.6.7
	serde_urlencoded@0.7.1
	serde_yaml@0.9.34+deprecated
	sha1@0.10.6
	sha2@0.10.8
	sha2@0.9.9
	shellexpand@3.1.0
	signal-hook-registry@1.4.2
	simd-adler32@0.3.7
	simd_helpers@0.1.0
	siphasher@0.3.11
	siphasher@1.0.1
	slab@0.4.9
	smallvec@1.13.2
	socket2@0.5.7
	soup3-sys@0.7.0
	soup3@0.7.0
	spin@0.9.8
	static_assertions@1.1.0
	string_cache@0.8.7
	string_cache_codegen@0.5.2
	strsim@0.11.1
	subtle@2.6.1
	syn@1.0.109
	syn@2.0.72
	sync_wrapper@1.0.1
	system-configuration-sys@0.5.0
	system-configuration@0.5.1
	system-deps@6.2.2
	system-deps@7.0.1
	tagptr@0.2.0
	target-lexicon@0.12.15
	temp-dir@0.1.13
	tempfile@3.10.1
	tendril@0.4.3
	termcolor@1.4.1
	thiserror-impl@1.0.63
	thiserror@1.0.63
	thread-id@4.2.2
	tiff@0.9.1
	tiger@0.1.0
	time-core@0.1.2
	time-macros@0.2.18
	time@0.3.36
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	tokio-macros@2.4.0
	tokio-native-tls@0.3.1
	tokio-rustls@0.26.0
	tokio-socks@0.5.2
	tokio-util@0.7.11
	tokio@1.39.2
	toml@0.8.16
	toml_datetime@0.6.7
	toml_edit@0.21.1
	toml_edit@0.22.17
	tower-layer@0.3.2
	tower-service@0.3.2
	tower@0.4.13
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing@0.1.40
	triomphe@0.1.11
	try-lock@0.2.5
	typemap-ors@1.0.0
	typenum@1.17.0
	uds_windows@1.1.0
	unic-char-property@0.9.0
	unic-char-range@0.9.0
	unic-common@0.9.0
	unic-emoji-char@0.9.0
	unic-ucd-version@0.9.0
	unicase@2.7.0
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-normalization@0.1.23
	unsafe-any-ors@1.0.0
	unsafe-libyaml@0.2.11
	untrusted@0.9.0
	url@2.5.2
	utf-8@0.7.6
	uuid@1.10.0
	v_frame@0.3.8
	vcpkg@0.2.15
	version-compare@0.2.0
	version_check@0.9.5
	walkdir@2.5.0
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.92
	wasm-bindgen-futures@0.4.42
	wasm-bindgen-macro-support@0.2.92
	wasm-bindgen-macro@0.2.92
	wasm-bindgen-shared@0.2.92
	wasm-bindgen@0.2.92
	wasm-streams@0.4.0
	web-sys@0.3.69
	webkit6-sys@0.4.0
	webkit6@0.4.0
	weezl@0.1.8
	widestring@1.1.0
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.8
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winnow@0.5.40
	winnow@0.6.16
	winreg@0.50.0
	winreg@0.52.0
	xdg-home@1.2.0
	xml-rs@0.8.20
	xml5ever@0.17.0
	xmlparser@0.13.6
	xmltree@0.10.3
	zbus@4.4.0
	zbus_macros@4.4.0
	zbus_names@3.0.0
	zeroize@1.8.1
	zune-core@0.4.12
	zune-inflate@0.2.54
	zune-jpeg@0.4.13
	zvariant@4.2.0
	zvariant_derive@4.2.0
	zvariant_utils@2.1.0
"

declare -A GIT_CRATES=(
	[article_scraper]='https://gitlab.com/news-flash/article_scraper;b3ce28632dab8678ae04789aeae76262283b1bb0;article_scraper-%commit%/article_scraper'
	[clapper-gtk-sys]='https://gitlab.gnome.org/JanGernert/clapper-rs/-/archive/%commit%/clapper-rs-%commit%.tar.gz;31161aa56fffe9cabd0a46159198949082f9d035;clapper-rs-%commit%/libclapper-gtk-rs/sys'
	[clapper-gtk]='https://gitlab.gnome.org/JanGernert/clapper-rs/-/archive/%commit%/clapper-rs-%commit%.tar.gz;31161aa56fffe9cabd0a46159198949082f9d035;clapper-rs-%commit%/libclapper-gtk-rs'
	[clapper-sys]='https://gitlab.gnome.org/JanGernert/clapper-rs/-/archive/%commit%/clapper-rs-%commit%.tar.gz;31161aa56fffe9cabd0a46159198949082f9d035;clapper-rs-%commit%/libclapper-rs/sys'
	[clapper]='https://gitlab.gnome.org/JanGernert/clapper-rs/-/archive/%commit%/clapper-rs-%commit%.tar.gz;31161aa56fffe9cabd0a46159198949082f9d035;clapper-rs-%commit%/libclapper-rs'
	[news-flash]='https://gitlab.com/news_flash/news_flash;2ec37e6fccac4e7ef295a76ffda97a0d71ed2e74;news_flash-%commit%'
	[newsblur_api]='https://gitlab.com/news-flash/newsblur_api;1e2b41e52a19e28c41a981fca6823f9447d82df4;newsblur_api-%commit%'
)

inherit cargo

DESCRIPTION="Feed Reader written in GTK"
HOMEPAGE=""
SRC_URI="
	${CARGO_CRATE_URIS}
"

LICENSE=""
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD-2 BSD GPL-3+ ISC MIT
	MPL-2.0 Unicode-DFS-2016 Unlicense
"
SLOT="0"
KEYWORDS="~amd64"