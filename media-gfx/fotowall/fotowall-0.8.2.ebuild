# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-gfx/fotowall/fotowall-0.7.1.ebuild,v 1.1 2009/07/25 11:16:12 hwoarang Exp $

EAPI="2"

inherit qt4

DESCRIPTION="Qt4 tool for creating wallpapers"
HOMEPAGE="http://www.qt-apps.org/content/show.php?content=71316"
SRC_URI="http://fotowall.googlecode.com/files/Fotowall-${PV}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug doc"

DEPEND="x11-libs/qt-svg:4
	x11-libs/qt-webkit:4"
RDEPEND="${DEPEND}"

S=$WORKDIR/Fotowall-$PV

src_configure() {
	eqmake4
}

src_install() {
	emake INSTALL_ROOT="${D}" install || die "emake install failed"
	use doc && dodoc "README.markdown"
}
