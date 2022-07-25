# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="All your services in one place, built by the community"
HOMEPAGE="https://github.com/ferdium/ferdium-app"
SRC_URI="https://github.com/ferdium/ferdium-app/releases/download/v${PV}/Ferdium-linux-${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/Ferdium-linux-${PV}"

src_install() {
	dodir "/opt/bin"
	cp -r "${S}" "${D}/opt" || die "installation failed!"
	dosym "../Ferdium-linux-${PV}/ferdium" "/opt/bin/ferdium"
}
