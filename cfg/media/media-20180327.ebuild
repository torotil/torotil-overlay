EAPI="3"

DESCRIPTION="Packages for playing music and video"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="+abc +burn +encode +lmms +rip +video -lilypond"

RDEPEND="
abc? (
  media-sound/abcm2ps
  media-sound/abcmidi
  media-sound/timidity++
)
lilypond? (
  media-sound/lilypond
)
burn? (
  kde-apps/k3b
)
encode? (
  media-sound/vorbis-tools
)
lmms? (
  media-sound/lmms
)
rip? (
  media-sound/abcde
)
video? (
  kde-apps/dragon
  media-video/vlc
  media-video/mpv
)
kde-apps/okular
"

