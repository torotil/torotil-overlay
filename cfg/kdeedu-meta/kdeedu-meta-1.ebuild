EAPI="3"

DESCRIPTION="Pull in all packages from kde-edu that are enabley by useflags"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="kalgebra kanagram kig kgeography kmplot kstars ktouch kwordquiz marble
parley rocs step"

RDEPEND="
	kalgebra?   ( kde-base/kalgebra )
	kanagram?   ( kde-base/kanagram )
	kig?        ( kde-base/kig )
	kgeography? ( kde-base/kgeography )
	kmplot?     ( kde-base/kmplot )
	kstars?     ( kde-base/kstars )
	ktouch?     ( kde-base/ktouch )
	kwordquiz?  ( kde-base/kwordquiz )
	marble?     ( kde-base/marble )
	parley?     ( kde-base/parley )
	rocs?       ( kde-base/rocs )
	step?       ( kde-base/step )
)
"
