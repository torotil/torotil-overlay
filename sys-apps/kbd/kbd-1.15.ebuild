# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-apps/kbd/kbd-1.15.ebuild,v 1.15 2009/11/26 10:36:26 maekke Exp $

inherit eutils

DESCRIPTION="Keyboard and console utilities"
HOMEPAGE="http://freshmeat.net/projects/kbd/"
SRC_URI="ftp://ftp.altlinux.org/pub/people/legion/kbd/${P}.tar.gz
http://mereandor.paebbels.com/distfiles/neo-linux-2070.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ~ia64 ~m68k ~mips ppc ppc64 ~s390 ~sh ~sparc x86"
IUSE="nls"

RDEPEND=""
DEPEND="${RDEPEND}
	nls? ( sys-devel/gettext )"

src_unpack() {
	unpack ${A}
	cd "${S}"

	epatch "${FILESDIR}"/${PN}-1.12-kbio.patch
}

src_compile() {
	econf $(use_enable nls) || die
	emake || die
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc AUTHORS ChangeLog INSTALL NEWS README
	dohtml doc/*.html

	einfo "Install neo keymap"
	mkdir "${D}/usr/share/keymaps/i386/neo" && \
	gzip -c "${WORKDIR}/neo-linux/console/neo.map" > \
	  "${D}/usr/share/keymaps/i386/neo/neo.map.gz" || \
	  die "Failed to install  neo.map.gz"
}
