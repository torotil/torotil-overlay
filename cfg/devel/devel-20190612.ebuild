EAPI="3"

DESCRIPTION="Meta package for development packages"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="+ebuild +kde +php +postgres +python +web +cross-browser"

RDEPEND="
dev-util/kdevelop
dev-vcs/git
kde-apps/kompare
sys-devel/gdb

php? (
  dev-util/kdevelop-php
)
web? (
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
  dev-db/postgresql[server]
)
"
