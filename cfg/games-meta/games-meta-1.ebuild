EAPI="3"

DESCRIPTION="Pull in all games that are enabley by useflags"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE="blinken bomber bovo granatier kapman katomic kbattleship kblackbox kblocks
kbreakout kbruch kfourline kiriki klines kmahjongg kmines knetwalk kpat kreversi
ksame kshisen ksirk ksquares
"

RDEPEND="
	blinken? ( kde-base/blinken )
	bomber?  ( kde-base/bomber )
	bovo?    ( kde-base/bovo )
	granatier?   ( kde-base/granatier )
	kapman?  ( kde-base/kapman )
	katomic? ( kde-base/katomic )
	kbattleship? ( kde-base/kbattleship )
	kblackbox?   ( kde-base/kblackbox )
	kblocks? ( kde-base/kblocks )
	kbreakout?   ( kde-base/kbreakout )
	kbruch?  ( kde-base/kbruch )
	kfourline?   ( kde-base/kfourinline )
	kiriki?  ( kde-base/kiriki )
	klines?  ( kde-base/klines )
	kmahjongg?   ( kde-base/kmahjongg )
	kmines?  ( kde-base/kmines )
	knetwalk?    ( kde-base/knetwalk )
	kpat?    ( kde-base/kpat )
	kreversi?( kde-base/kreversi )
	ksame?   ( kde-base/ksame )
	kshisen? ( kde-base/kshisen )
	ksirk?   ( kde-base/ksirk )
	ksquares?( kde-base/ksquares )
"
