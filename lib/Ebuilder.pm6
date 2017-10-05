#! /usr/bin/env false

unit module Ebuilder;

sub template() returns Str is export
{
	q:to/EOF/
# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="{{ description }}"
HOMEPAGE="{{ src_uri }}"

EGIT_REPO_URI="{{ src_uri }}"
EGIT_COMMIT="v${PV}"
EGIT_CHECKOUT_DIR=${S}/

LICENSE="{{ license }}"
SLOT="0"
KEYWORDS="~*"
IUSE=""

DEPEND=""
RDEPEND="{{ dependencies }}"
	EOF
}
