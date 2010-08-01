EAPI="3"

DESCRIPTION="Metapackage for all communication programs"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="+skype"

RDEPEND="
kde-base/kmail
kde-base/knode
kde-base/krfb
mail-filter/bogofilter
net-im/gajim
net-irc/konversation
www-client/firefox

skype? ( net-im/skype )

"
