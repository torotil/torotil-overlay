# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

IUSE=""

inherit eutils

MY_PV=${PV//./-}

S=${WORKDIR}/${PN}

DESCRIPTION="Programs for processing ABC music notation files"
HOMEPAGE="http://abc.sourceforge.net/abcMIDI/"
SRC_URI="http://ifdo.pugmarks.com/~seymour/runabc/abcMIDI-${MY_PV}.zip"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"

DEPEND=""

src_compile() {
	cd ${S}
	make -f makefiles/unix.mak CFLAGS="-c -DANSILIBS ${CFLAGS}"
}

src_install() {
	dobin abc2abc abc2midi abcmatch mftext midi2abc midicopy yaps
	doman doc/*.1
	dodoc doc/AUTHORS doc/CHANGES doc/*.txt
	docinto programming
	dodoc doc/programming/*
	insinto /usr/share/doc/${P}
	doins demo.abc
}

