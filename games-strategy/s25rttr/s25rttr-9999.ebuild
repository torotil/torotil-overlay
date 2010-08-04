# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2

if [[ ${PV} = 9999* ]]; then
	EBZR_REPO_URI="lp:~torotil/s25rttr/fix-cmake"
	BZR="bzr"
fi

inherit games ${BZR} eutils

DESCRIPTION="An opensource remake of the famous game The Settlers II. You need the sound and graphic data from the original game to make this work."
HOMEPAGE="http://www.siedler25.org/"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="cdinstall"
RDEPEND=">=media-libs/libsdl-1.2
	>=media-libs/sdl-mixer-1.2
	>=net-misc/miniupnpc-1.4.20100609
"
DEPEND="${RDEPEND} >=dev-util/cmake-2.6"
RDEPEND="${RDEPEND}
	cdinstall? ( =games-strategy/s25rttr-data-1 )"

SOURCE=${S}
S=${S}/build-dir

function src_unpack() {
	# workaround for 287055
	LC_ALL="$(locale -a | grep utf8 | head -n1)" bzr_src_unpack
}

function src_prepare() {
	cd ${SOURCE}
	mkdir -p .bzr/branch build/S2
	bzr revno "${EBZR_STORE_DIR}/${EBZR_CACHE_DIR}" > .bzr/branch/last-revision
	#epatch ${FILESDIR}/.patch
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
