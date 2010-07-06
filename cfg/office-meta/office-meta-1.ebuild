EAPI="3"

DESCRIPTION="Packages for office packages"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="+koffice"

RDEPEND="
app-office/dia
app-office/openoffice
app-office/scribus
media-gfx/inkscape

koffice? ( app-office/koffice-meta )
"
