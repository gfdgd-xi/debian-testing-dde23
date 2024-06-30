#!/bin/bash
echo "deb [trusted=true] https://github.com/gfdgd-xi/debian-testing-dde23/raw/main/ ./" > /etc/apt/sources.list.d/gxde-temp.list
if [[ `arch` != "loongarch64" ]]; then
    echo "deb https://deb.debian.org/debian/ testing main contrib non-free non-free-firmware" >> /etc/apt/sources.list.d/debian.list
    echo "deb https://deb.debian.org/debian/ testing-backports main contrib non-free non-free-firmware" >> /etc/apt/sources.list.d/debian.list
    echo "deb https://security.debian.org/debian-security testing-security main contrib non-free non-free-firmware" >> /etc/apt/sources.list.d/debian.list
fi
apt update
apt upgrade -y
apt install -y deepin-desktop-environment-base
apt install -y deepin-desktop-environment-cli
apt install -y deepin-desktop-environment-core
apt install -y deepin-desktop-environment-extras
apt install -y debiandde-config
apt install -y deepin-installer -y
apt install -y live-task-recommended
apt install -y live-task-non-free-firmware-pc
apt install -y live-task-standard
apt install -y live-boot
rm /etc/apt/sources.list.d/gxde-temp.list
apt update
apt clean