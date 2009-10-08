# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit eutils games

DESCRIPTION="The settlers II - data files"
HOMEPAGE=""
SRC_URI=""

LICENSE="DOOM3"
SLOT="0"
KEYWORDS="-* amd64 x86"
IUSE=""
PROPERTIES="interactive"
RESTRICT="strip"

DEPEND="app-arch/bzip2
	app-arch/tar"
RDEPEND="games-strategy/s25rttr"

S=${WORKDIR}

GAMES_CHECK_LICENSE="yes"
dir=${GAMES_DATADIR}/s25rttr/S2
Ddir=${D}/${dir}

src_install() {
	cdrom_get_cds S2/GFX
	insinto "${dir}"

	einfo "Copying files from Disk..."
	doins -r ${CDROM_ROOT}/S2/GFX ${CDROM_ROOT}/S2/DATA || die

	find ${Ddir} -exec touch '{}' \;

	prepgamesdirs
}

pkg_postinst() {
	games_pkg_postinst
	elog "This is just the data portion of the game.  You will need to emerge"
	elog "games-strategy/s25rttr to play the game."
	echo
}
