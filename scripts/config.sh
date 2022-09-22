#!/bin/bash
export TARGET_LINUX_VERSION="jammy"
export TARGET_LINUX_MIRROR="http://us.archive.ubuntu.com/ubuntu/"
export TARGET_KERNEL_PACKAGE="linux-generic"
export TARGET_NAME="linux-live"
export GRUB_LIVEBOOT_LABEL="Ubuntu 22.04 (Jammy-Jellyfish)"
export GRUB_INSTALL_LABEL="Installer"
export TARGET_PACKAGE_REMOVE="
    ubiquity \
    casper \
    discover \
    laptop-detect \
    os-prober \
"
export CONFIG_FILE_VERSION="22.04"

function custom_package() {
    # gui
    apt-get install -y \
    plymouth-theme-ubuntu-text \
    ubuntu-desktop \
    ubuntu-wallpapers

    # tools
    apt-get install -y \
    nginx \
    nodejs \
    curl \
    git \
    nano \
    less

    # purge
    apt-get purge -y \
    libreoffice-* \
    thunderbird \
    gnome-mahjongg \
    gnome-mines \
    gnome-sudoku \
    aisleriot \
    hitori
}
