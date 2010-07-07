EAPI="3"

DESCRIPTION="Pull in all packages necessary for a desktop system"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="dev +devel +download edu +flash games +hacking +print +scan sci"

RDEPEND="
cfg/admin-meta
cfg/communication-meta
cfg/media-meta
cfg/office-meta
cfg/sys-meta

edu? ( cfg/kdeedu-meta )
games? ( cfg/games-meta )
devel? ( cfg/devel-meta )
hacking? ( cfg/hacking-meta )


x11-base/xorg-server

kde-misc/krusader
kde-misc/filelight

kde-base/kdeartwork-meta
kde-base/kdebase-meta
kde-base/kde-l10n

kde-base/kget
kde-base/kgpg
kde-base/kmix
kde-base/kwallet
	
kde-base/kscd

kde-base/gwenview
kde-base/kamera
kde-base/kate
kde-base/ksaneplugin
kde-base/printer-applet
kde-base/system-config-printer-kde

kde-base/ark
kde-base/kcharselect
kde-base/kcolorchooser
kde-base/kdegraphics-strigi-analyzer
kde-base/kdenetwork-filesharing
kde-base/kdeplasma-addons
kde-base/kfilereplace
kde-base/kgamma
kde-base/knetworkconf
kde-base/kommander
kde-base/krdc
kde-base/ksnapshot
kde-base/ksystemlog
kde-base/kweather
kde-base/libkipi
kde-base/sweeper
kde-base/superkaramba
kde-base/thumbnailers
kde-base/kruler

x11-themes/gtk-engines

dev? (
	kde-base/klinkstatus
	kde-base/okteta
)

sci? (
	kde-base/cantor
	kde-base/kalzium
)

scan? ( media-gfx/xsane )
print? ( net-print/gutenprint )

kde-base/akregator
www-client/mozilla-firefox
flash? (
  www-plugins/adobe-flash
  www-plugins/nspluginwrapper
)

download? ( net-p2p/vuze )
"
