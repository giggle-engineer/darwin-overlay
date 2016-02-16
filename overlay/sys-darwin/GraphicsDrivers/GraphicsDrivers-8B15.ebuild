# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

DESCRIPTION="ACPI driver"
SRC_URI="http://src.macosforge.org/BinaryDrivers/${PV}/${P}.root.tar.gz"
HOMEPAGE="http://macosforge.org"
KEYWORDS="~x86"
SLOT="0"
LICENSE="ADL"
RESTRICT="mirror"

src_unpack() {
	unpack ${A}
}

src_install() {
	cp -R "${S}/" "${D}/" || die "Install failed!"
}
