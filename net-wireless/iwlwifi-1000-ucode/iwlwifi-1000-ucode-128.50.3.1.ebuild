# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-wireless/iwl5000-ucode/iwl5000-ucode-8.24.2.12.ebuild,v 1.4 2010/01/09 11:18:39 hanno Exp $

DESCRIPTION="Intel (R) Wireless WiFi Link 1000 ucode"
HOMEPAGE="http://intellinuxwireless.org/?p=iwlwifi"
SRC_URI="http://intellinuxwireless.org/iwlwifi/downloads/${P}.tgz"

LICENSE="ipw3945"
SLOT="3"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="|| ( >=sys-fs/udev-096 >=sys-apps/hotplug-20040923 )"

src_compile() {
	true;
}

src_install() {
	insinto /lib/firmware
	doins "${S}/${PN/-ucode}-${SLOT}.ucode"

	dodoc README* || die "dodoc failed"
}
