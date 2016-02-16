# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

DESCRIPTION="Darwin kernel sources"
SRC_URI="http://opensource.apple.com/tarballs/xnu/xnu-${PV}.tar.gz"
HOMEPAGE="http://opensource.apple.com"
KEYWORDS="~x86"
SLOT="0"
LICENSE="APSL"
RESTRICT="mirror"

DEPEND="sys-darwin/darwin-headers"

src_unpack() {
	unpack ${A}
	epatch "${FILESDIR}"/xnu-3247.1.106-AnV.patch
}

src_compile() {
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR=${D} install
}
