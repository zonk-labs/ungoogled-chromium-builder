#!/usr/bin/env bash

apt update -y && apt dist-upgrade -y
apt install -y devscripts equivs git

git clone https://github.com/ungoogled-software/ungoogled-chromium-debian.git
cd ungoogled-chromium-debian
git submodule update --init --recursive

debian/rules setup
mk-build-deps -i --tool='apt-get -o Debug::pkgProblemResolver=yes --no-install-recommends --yes' debian/control
rm ungoogled-chromium-build-deps_*
dpkg-buildpackage -b -uc

cp ../*.deb /build/
cp ../*.changes /build/
cp ../*.buildinfo /build/
