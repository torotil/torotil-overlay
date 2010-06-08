EAPI="3"

DESCRIPTION="Pull in all packages necessary for a desktop system"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="dev edu games sci"

RDEPEND="
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

x11-themes/gtk-engines

dev? (
	kde-base/klinkstatus
	kde-base/okteta
)

edu? ( cfg/kdeedu-meta )

games? (
	kde-base/blinken
	kde-base/bomber
	kde-base/bovo
	kde-base/granatier
	kde-base/kapman
	kde-base/katomic
	kde-base/kbattleship
	kde-base/kblackbox
	kde-base/kblocks
	kde-base/kbounce
	kde-base/kbreakout
	kde-base/kbruch
	kde-base/kfourinline
	kde-base/kgoldrunner
	kde-base/kiriki
	kde-base/kjumpingcube
	kde-base/klines
	kde-base/kmahjongg
	kde-base/kmines
	kde-base/knetwalk
	kde-base/konquest
	kde-base/kpat
	kde-base/kreversi
	kde-base/kruler
	kde-base/ksame
	kde-base/kshisen
	kde-base/ksirk
	kde-base/ksquares
	kde-base/rocs
)

sci? (
	kde-base/cantor
	kde-base/kalzium
)
"
