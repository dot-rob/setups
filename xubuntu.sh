#!/bin/bash

set -euo pipefail

echo "Installing additional XFCE applications..."

sudo apt install -y \
atril \
build-essential \
cifs-utils \
cups-pk-helper \
curl \
firefox \
fonts-inter \
fonts-jetbrains-mono \
geany \
gnome-disk-utility \
gvfs-backends \
htop \
mousepad \
nfs-common \
nmap \
openfortivpn \
parole \
putty \
qalculate-gtk \
remmina \
ristretto \
system-config-printer \
thunar-archive-plugin \
tio \
whois \
xarchiver \
xfce4-battery-plugin \
xfce4-clipman-plugin \
xfce4-netload-plugin \
xfce4-places-plugin \
xfce4-taskmanager \
xfce4-timer-plugin \
xfce4-weather-plugin

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

git clone https://github.com/vinceliuice/Qogir-theme.git

echo ""
echo ""

echo "XFCE installation completed. Reboot to complete the setup."

echo ""
echo ""
