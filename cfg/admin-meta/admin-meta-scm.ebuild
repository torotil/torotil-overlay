EAPI="3"

DESCRIPTION="Metapackage for all admin tools"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="X kde"

RDEPEND="
app-admin/apg
app-antivirus/clamav
app-text/convmv
net-analyzer/tcpdump
sys-apps/paludis-tools
sys-fs/squashfs-tools

X? (
  x11-misc/xrestop
  app-emulation/virtualbox-ose
  app-emulation/virtualbox-ose-additions
)
"
