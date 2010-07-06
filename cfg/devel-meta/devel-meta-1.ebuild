EAPI="3"

DESCRIPTION="Meta package for development packages"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="+ebuild +kde +php"

RDEPEND="
app-arch/p7zip
dev-db/mysql-workbench
dev-util/kdevelop
dev-vcs/git
kde-base/umbrello
sys-devel/gdb

ebuild? (
  app-portage/overlay-utils
)
kde? (
  x11-wm/openbox
)
php? (
  dev-util/kdevelop-php
  dev-util/kdevelop-php-docs
)
"
