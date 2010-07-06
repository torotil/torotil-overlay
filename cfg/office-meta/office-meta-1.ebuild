EAPI="3"

DESCRIPTION="Packages for office packages"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="+koffice +fonts"

RDEPEND="
app-office/dia
app-office/kmymoney
app-office/openoffice
app-office/scribus
media-gfx/inkscape

fonts? (
  media-fonts/exljbris-free
  media-fonts/urw-fonts
)

koffice? ( app-office/koffice-meta )
"
