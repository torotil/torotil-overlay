# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2

inherit games eutils

REVISION="9022"
DESCRIPTION="An opensource remake of the famous game The Settlers II. You need the sound and graphic data from the original game to make this work."
HOMEPAGE="http://www.siedler25.org/"
SRC_URI="http://bazaar.launchpad.net/~flosoft/${PN}/${PV}/tarball/${REVISION}"
RESTRICT="mirror"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="cdinstall"
RDEPEND=">=media-libs/libsdl-1.2
	>=media-libs/sdl-mixer-1.2
	>=net-libs/miniupnpc-1.4.20100609
"
DEPEND="${RDEPEND} >=dev-util/cmake-2.6"
RDEPEND="${RDEPEND}
	cdinstall? ( =games-strategy/s25rttr-data-1 )"

function src_unpack() {
	tar -zxf "${DISTDIR}/${A}"
	cd "./~flosoft"
	epatch "${FILESDIR}/s25rttr-0.8-no-dbg-or-bundled-libraries.patch"
}

SOURCE="${WORKDIR}/~flosoft/s25rttr/0.8"
S="${SOURCE}/build-dir"

function src_prepare() {
	cd ${SOURCE}
	mkdir -p build/S2
	#epatch ${FILESDIR}/.patch
	# remove bundled dev-lang/lua
	rm -rf contrib/lua
	mkdir -p .bzr/branch
	echo ${REVISION} > .bzr/branch/last-revision
	mkdir ${S}
}

function src_configure() {
	einfo ${SOURCE}/build/cmake.sh \
		--prefix=${GAMES_PREFIX} \
		--bindir=${GAMES_BINDIR} \
		--datadir=${GAMES_DATADIR}/${PN} \
		--libdir=$(games_get_libdir)/${PN} \
		--arch=linux.local
	${SOURCE}/build/cmake.sh \
		--prefix=${GAMES_PREFIX} \
		--bindir=${GAMES_BINDIR} \
		--datadir=${GAMES_DATADIR}/${PN} \
		--libdir=$(games_get_libdir)/${PN} \
		--arch=linux.local || die "cmake failed"
}

function src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	prepgamesdirs
}
