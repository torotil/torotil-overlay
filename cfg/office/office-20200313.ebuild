EAPI="3"

DESCRIPTION="Packages for office packages"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="+fonts +latex"

RDEPEND="
app-office/dia
app-office/kmymoney
app-office/libreoffice
media-gfx/gimp
sci-calculators/qalculate-gtk

fonts? (
  media-fonts/exljbris-free
  media-fonts/urw-fonts
)

latex? (
  app-text/texlive
)
"
