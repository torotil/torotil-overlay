EAPI="3"

DESCRIPTION="Metapackage for all communication programs"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="+skype"

RDEPEND="
net-im/gajim
skype? ( net-im/skype )
"
