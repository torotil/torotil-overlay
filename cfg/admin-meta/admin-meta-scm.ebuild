EAPI="3"

DESCRIPTION="Metapackage for all admin tools"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="X kde"

RDEPEND="
app-admin/apg
app-admin/localepurge
app-admin/sudo
app-antivirus/clamav
app-editors/vim
app-shells/zsh    
app-text/convmv
app-text/wgetpaste
dev-util/ccache
dev-util/strace
net-analyzer/tcpdump
net-misc/openvpn
sys-apps/dmidecode
sys-apps/iproute2
sys-apps/lm_sensors
sys-apps/lshw
sys-apps/paludis-tools
sys-boot/grub-static
sys-fs/dosfstools
sys-fs/lvm2
sys-fs/reiserfsprogs
sys-fs/squashfs-tools
sys-fs/sysfsutils
sys-kernel/genkernel
sys-power/powertop
sys-process/htop
sys-process/iotop
sys-process/lsof
x11-misc/read-edid

X? (
  x11-misc/xrestop
  app-emulation/virtualbox-ose
  app-emulation/virtualbox-ose-additions
)
"
