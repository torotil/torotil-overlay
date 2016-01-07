EAPI="3"

DESCRIPTION="Pull in all packages from kde-edu that are enabley by useflags"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="kalgebra kanagram kig kgeography kmplot kstars ktouch kwordquiz marble
parley rocs step"

RDEPEND="
	kalgebra?   ( kde-apps/kalgebra )
	kanagram?   ( kde-apps/kanagram )
	kig?        ( kde-apps/kig )
	kgeography? ( kde-apps/kgeography )
	kmplot?     ( kde-apps/kmplot )
	kstars?     ( kde-apps/kstars )
	ktouch?     ( kde-apps/ktouch )
	kwordquiz?  ( kde-apps/kwordquiz )
	marble?     ( kde-apps/marble )
	parley?     ( kde-apps/parley )
	rocs?       ( kde-apps/rocs )
	step?       ( kde-apps/step )
"
