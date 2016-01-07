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
  mail-client/thunderbird
  www-client/chromium
)

x11-base/xorg-server

kde-apps/filelight

kde-apps/kdeartwork-meta
kde-apps/kdebase-meta
kde-apps/kde4-l10n

kde-apps/kget
kde-apps/kgpg
kde-apps/kmix
	
kde-apps/kscd

kde-apps/gwenview
kde-apps/kamera
kde-apps/kate
kde-apps/ksaneplugin
kde-misc/kcm-touchpad
kde-misc/kde-gtk-config

kde-apps/ark
kde-apps/kcharselect
kde-apps/kcolorchooser
kde-apps/kdenetwork-filesharing
kde-base/kdeplasma-addons
kde-apps/kfilereplace
kde-apps/kgamma
kde-apps/kommander
kde-apps/krdc
kde-apps/ksnapshot
kde-apps/ksystemlog
kde-apps/libkipi
kde-apps/superkaramba
kde-apps/thumbnailers
kde-apps/kruler

x11-themes/gtk-engines

dev? (
	kde-apps/klinkstatus
	kde-apps/okteta
)

sci? (
	kde-apps/cantor
	kde-apps/kalzium
)

scan? ( media-gfx/xsane )
print? ( net-print/gutenprint )

kde-base/akregator
www-client/firefox
flash? (
  www-plugins/adobe-flash
)

download? ( net-p2p/qbittorrent )
"
