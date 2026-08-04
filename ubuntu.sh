#!/bin/bash

set -euo pipefail

echo "Installing Ubuntu applications..."

sudo apt install -y \
blanket \
build-essential \
gnome-tweaks \
htop \
nmap \
openfortivpn \
putty \
remmina \
showtime \
tio

echo ""
echo ""

echo "Adding $USER to required groups..."
for group in dialout lpadmin; do
  if id -nG "$USER" | grep -qw "$group"; then
    echo "$USER is already in the $group group."
  else
    sudo usermod -aG "$group" "$USER"
    echo "Added $USER to the $group group."
  fi
done

echo ""
echo ""

echo "Ubuntu installation completed. Reboot to complete the setup."

echo ""
echo ""
