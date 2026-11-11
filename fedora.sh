#!/bin/bash

set -euo pipefail

echo "Installing applications on Fedora..."

sudo dnf remove -y \
gnome-calendar \
gnome-contacts \
simple-scan

sudo dnf group install -y \
c-development \
virtualization

sudo dnf install -y \
bind-utils \
blanket \
cifs-utils \
gnome-shell-extension-dash-to-panel \
gnome-shell-extensions \
gnome-tweaks \
htop \
jetbrains-mono-fonts \
nfs-utils \
nmap \
openfortivpn \
remmina \
rsms-inter-fonts \
tilix \
tio \
unzip \
virt-manager \
wget \
whois \
zip

echo ""
echo ""

echo "Adding $USER to required groups..."
for group in dialout libvirt; do
  if id -nG "$USER" | grep -qw "$group"; then
    echo "$USER is already in the $group group."
  else
    sudo usermod -aG "$group" "$USER"
    echo "Added $USER to the $group group."
  fi
done

echo ""
echo ""

echo "Fedora installation completed. Reboot to complete the setup."

echo ""
echo ""
