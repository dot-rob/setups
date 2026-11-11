#!/bin/bash

set -euo pipefail

echo "Installing GNOME and applications..."

sudo apt update

sudo apt install -y \
gnome-shell \
gdm3 \
gnome-control-center \
gnome-keyring \
amd64-microcode \
bash-completion \
bind9-dnsutils \
blanket \
bluez \
build-essential \
cifs-utils \
cups \
cups-pk-helper \
curl \
file-roller \
firefox-esr \
firmware-iwlwifi \
firmware-linux-nonfree \
firmware-realtek \
fonts-inter \
fonts-jetbrains-mono \
foomatic-db \
gnome-calculator \
gnome-clocks \
gnome-disk-utility \
gnome-logs \
gnome-session \
gnome-shell-extension-dash-to-panel \
gnome-shell-extensions \
gnome-text-editor \
gnome-themes-extra \
gnome-tweaks \
gvfs-backends \
htop \
intel-microcode \
libspa-0.2-bluetooth \
libvirt-daemon-system \
loupe \
nautilus \
network-manager-gnome \
nfs-common \
nmap \
openfortivpn \
papers \
pipewire-audio \
remmina \
showtime \
speech-dispatcher \
system-config-printer \
tilix \
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

echo "GNOME installation completed. Reboot to complete the setup."

echo ""
echo ""
