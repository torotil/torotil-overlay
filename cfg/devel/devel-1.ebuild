EAPI="3"

DESCRIPTION="Meta package for development packages"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="+ebuild +kde +php +postgres +python +web +cross-browser"

RDEPEND="
dev-db/mysql-workbench
dev-util/kdevelop
dev-vcs/git
kde-base/kompare
kde-base/umbrello
sys-devel/gdb

ebuild? (
)
kde? (
  x11-wm/openbox
)
php? (
  dev-util/kdevelop-php
  dev-util/kdevelop-php-docs
)
web? (
  dev-java/yuicompressor
  www-client/firefox
  www-servers/lighttpd
  php? (
  	dev-lang/php[fpm]
  )
  cross-browser? (
    app-emulation/virtualbox
    www-client/opera
    www-client/chromium
	www-client/rekonq
  )
)
python? (
  dev-python/virtualenv
)
postgres? (
  dev-db/pgadmin3
  dev-db/postgresql-server
)
"
