#!/bin/sh

VIRTUALBOX_VERSION="6.0.12"

apt-get update
# Install packages needed for guest additions
apt-get install linux-headers-$(uname -r) build-essential dkms
# Install minimal gnome desktop
apt-get install -y ubuntu-desktop
# Install additional stuff
apt-get install -y \
  curl \
  wget \
  git \
  terminator

# Do an overall upgrade
apt-get update
apt-get upgrade -y

# Clean-up and reboot
apt-get autoremove -y
shutdown -r now