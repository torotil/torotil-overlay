EAPI="3"

DESCRIPTION="Packages for playing music and video"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="+abc +audio +encode +lmms +rip +tag +video"

RDEPEND="
abc? (
  media-sound/abcm2ps
  media-sound/abcmidi
  media-sound/lilypond
  media-sound/qpitch
  media-sound/timidity++
)
audio? (
  media-sound/amarok
)
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
video? (
  kde-base/dragonplayer
  media-video/vlc
  media-video/smplayer
)
"

