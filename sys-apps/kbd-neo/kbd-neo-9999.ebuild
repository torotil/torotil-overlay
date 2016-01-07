# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="neo keymap file for the console"
HOMEPAGE="http://wiki.neo-layout.org"
SRC_URI="http://wiki.neo-layout.org/export/2420/linux/console/neo.map"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND} sys-apps/kbd"

src_unpack() {
	cp "${DISTDIR}/${A}" ./ || die "failed to copy keymap file"
}

src_compile() {
	gzip "neo.map" || die "failed to compress keymap"
}

src_install() {
	insinto "/usr/share/keymaps/i386/neo"
	doins "neo.map.gz" || die "failed to install keymap"
}

