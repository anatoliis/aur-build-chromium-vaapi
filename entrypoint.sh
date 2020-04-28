#!/bin/bash -ex
PKG_NAME="chromium-vaapi"
pwd
git clone https://aur.archlinux.org/$PKG_NAME
cd $PKG_NAME
sudo pacman -Syu --noconfirm
makepkg -s --noconfirm
cp /home/user/$PKG_NAME/*.pkg.* /home/user/pkg/
