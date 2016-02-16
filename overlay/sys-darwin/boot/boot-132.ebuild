# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

DESCRIPTION="Darwin's bootloader"
SRC_URI="http://opensource.apple.com/tarballs/boot/boot-${PV}.tar.gz"
HOMEPAGE="http://opensource.apple.com"
KEYWORDS="~x86"
SLOT="0"
LICENSE="APSL"
RESTRICT="mirror"

DEPEND="sys-darwin/darwin-headers"

src_unpack() {
	unpack ${A}
}

src_compile() {
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR=${D} install
}
