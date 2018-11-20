EAPI="3"

DESCRIPTION="Pull in all packages necessary for a desktop system"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="dev +devel +download edu +flash games +hacking +pim +print +scan sci"

RDEPEND="
cfg/admin
cfg/communication
cfg/media
cfg/office
cfg/sys

edu? ( cfg/kdeedu )
games? ( cfg/games )
devel? ( cfg/devel )
hacking? ( cfg/hacking )
pim? (
  kde-apps/kmail
  www-client/chromium
)

x11-base/xorg-server

kde-apps/filelight

kde-plasma/plasma-meta

kde-apps/kget
kde-apps/kgpg
kde-apps/kmix
	
kde-apps/kamera
kde-apps/kate
kde-plasma/kde-gtk-config

kde-apps/ark
kde-apps/kcharselect
kde-apps/kcolorchooser
kde-apps/kdenetwork-filesharing
kde-apps/krdc
kde-apps/spectacle
kde-apps/ksystemlog
kde-apps/libkipi
kde-apps/thumbnailers
kde-apps/kruler

x11-themes/gtk-engines

dev? (
	kde-apps/okteta
)

sci? (
	kde-apps/cantor
	kde-apps/kalzium
)

scan? ( media-gfx/xsane )
print? ( net-print/gutenprint )

www-client/chromium
download? ( net-p2p/qbittorrent )
"
