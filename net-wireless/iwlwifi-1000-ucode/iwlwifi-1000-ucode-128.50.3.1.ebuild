# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit multilib

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
	insinto /$(get_libdir)/firmware
	doins "${S}/${PN/-ucode}-${SLOT}.ucode"

	dodoc README* || die "dodoc failed"
}
