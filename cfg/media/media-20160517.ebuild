EAPI="3"

DESCRIPTION="Packages for playing music and video"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="+abc +audio +encode +lmms +rip +tag +video -lilypond"

RDEPEND="
abc? (
  media-sound/abcm2ps
  media-sound/abcmidi
  media-sound/qpitch
  media-sound/timidity++
)
lilypond? (
  media-sound/lilypond
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
)
tag? (
  media-sound/mp3diags
)
video? (
  kde-apps/dragon
  media-video/vlc
  media-video/mpv
)
kde-apps/okular
"

