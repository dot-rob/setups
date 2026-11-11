#!/bin/bash

set -euo pipefail

echo "Installing Ubuntu applications..."

sudo apt update

sudo apt install -y \
bind9-dnsutils \
blanket \
build-essential \
cifs-utils \
curl \
fonts-inter \
fonts-jetbrains-mono \
gnome-tweaks \
htop \
libvirt-daemon-system \
nfs-common \
nmap \
openfortivpn \
putty \
remmina \
showtime \
tio \
ufw \
unzip \
virt-manager \
wget \
whois \
zip

echo ""
echo ""

echo "Enabling firewall (deny incoming, allow outgoing)..."
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw --force enable

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

echo "Ubuntu installation completed. Reboot to complete the setup."

echo ""
echo ""
