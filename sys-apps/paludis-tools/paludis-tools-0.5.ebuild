# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/pyxml/pyxml-0.8.4-r2.ebuild,v 1.15 2010/07/16 21:24:07 arfrever Exp $

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils eutils

DESCRIPTION="Python tools for paludis"
HOMEPAGE="http://paludis-tools.linuryorn.de/"
SRC_URI="http://pypi.python.org/packages/source/p/${PN}/${P}.tar.bz2"


LICENSE="PYTHON"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
>=sys-apps/paludis-0.46[python-bindings]
>=dev-lang/python-2.6
>=dev-python/jinja-2.1
>=dev-python/argparse-1.0
>=dev-python/python-dateutil-1.4
"
RDEPEND="${DEPEND}"

