# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

DESCRIPTION="Some useful commands for Darwin"
SRC_URI="http://opensource.apple.com/tarballs/bootstrap_cmds/bootstrap_cmds-${PV}.tar.gz"
HOMEPAGE="http://opensource.apple.com"
KEYWORDS="~x86"
SLOT="0"
LICENSE="APSL"
RESTRICT="mirror"

DEPEND="sys-darwin/darwin-headers"

src_unpack() {
	unpack ${A}
	epatch "${FILESDIR}"/bootstrap_cmds-60.1.patch
}

src_compile() {
	emake -f Makefile.lnx || die "emake failed"
}

src_install() {
	emake -f Makefile.lnx DESTDIR=${D} install
}
