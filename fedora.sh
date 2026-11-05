#!/bin/bash

set -euo pipefail

echo "Installing applications on Fedora..."

sudo dnf remove -y \
gnome-calendar \
gnome-contacts \
simple-scan

sudo dnf install -y \
blanket \
build-essential \
gnome-shell-extension-dash-to-panel \
gnome-shell-extensions \
gnome-tweaks \
htop \
nmap \
openfortivpn \
remmina \
tilix \
tio


echo ""
echo ""

echo "Adding $USER to required groups..."
for group in dialout libvirt lpadmin; do
  if id -nG "$USER" | grep -qw "$group"; then
    echo "$USER is already in the $group group."
  else
    sudo usermod -aG "$group" "$USER"
    echo "Added $USER to the $group group."
  fi
done

echo ""
echo ""

echo "FEDORA installation completed. Reboot to complete the setup."

echo ""
echo ""
