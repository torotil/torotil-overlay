EAPI="3"

DESCRIPTION="Packages for playing music and video"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="+encode +tag"

RDEPEND="
media-video/smplayer
encode? (
  media-sound/vorbis-tools
)
tag? (
  media-sound/quodlibet
)
"
