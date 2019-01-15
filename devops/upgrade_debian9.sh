#!/usr/bin/env bash

mkdir kernel-tmp && cd kernel-tmp
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.9.40/linux-headers-4.9.40-040940_4.9.40-040940.201707271932_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.9.40/linux-headers-4.9.40-040940-generic_4.9.40-040940.201707271932_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.9.40/linux-image-4.9.40-040940-generic_4.9.40-040940.201707271932_amd64.deb
dpkg -i *.deb
