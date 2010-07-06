EAPI="3"

DESCRIPTION="Packages for playing music and video"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="+encode +lmms +rip +tag"

RDEPEND="
kde-base/dragonplayer
media-sound/amarok
media-video/vlc
media-video/smplayer

encode? (
  media-sound/vorbis-tools
)
lmms? (
  media-sound/lmms
)
rip? (
  app-cdr/k3b
  kde-base/kdemultimedia-kioslaves
)
tag? (
  media-sound/mp3diags
  media-sound/quodlibet
)
"

