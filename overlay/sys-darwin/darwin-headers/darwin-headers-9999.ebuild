# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit subversion

EAPI="2"

DESCRIPTION="Some darwin headers from toolwhip project"
HOMEPAGE="http://toolwhip.googlecode.com"
ESVN_REPO_URI="http://toolwhip.googlecode.com/svn/trunk/usr_include"

LICENSE="APSL"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	mkdir -p ${D}/usr/include
	cp -R ${S}/* ${D}/usr/include && chmod -R 644 ${D}/usr/include || die "Install failed"
}
