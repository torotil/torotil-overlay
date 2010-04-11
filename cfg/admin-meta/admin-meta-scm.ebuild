EAPI="3"

DESCRIPTION="Metapackage for all admin tools"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="X kde"

RDEPEND="
app-antivirus/clamav
net-analyzer/tcpdump
sys-fs/squashfs-tools

X? (
  x11-misc/xrestop
)
"
