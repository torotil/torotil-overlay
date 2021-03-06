EAPI="3"

DESCRIPTION="Metapackage for all admin tools"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="X clamav kde"

RDEPEND="
app-admin/apg
app-admin/sudo
clamav? ( app-antivirus/clamav )
app-editors/vim
app-shells/zsh    
app-text/convmv
app-text/wgetpaste
dev-util/ccache
dev-util/strace
net-analyzer/tcpdump
net-vpn/openvpn
sys-apps/dmidecode
sys-apps/iproute2
sys-apps/lshw
>sys-boot/grub-1
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

X? (
  x11-misc/read-edid
  x11-misc/xrestop
  app-emulation/virtualbox
  app-emulation/virtualbox-additions
)
"
