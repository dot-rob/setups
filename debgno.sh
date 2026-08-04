#!/bin/bash

set -euo pipefail

echo "Installing GNOME and applications..."

sudo apt install -y \
gnome-core \
gdm3 \
bash-completion \
bind9-dnsutils \
blanket \
build-essential \
cifs-utils \
cups \
cups-pk-helper \
curl \
firefox-esr \
firmware-iwlwifi \
firmware-linux-nonfree \
firmware-realtek \
fonts-inter \
fonts-jetbrains-mono \
foomatic-db-compressed-ppds \
openprinting-ppds \
gnome-calculator \
gnome-clocks \
gnome-disk-utility \
gnome-logs \
gnome-shell-extension-dash-to-panel \
gnome-shell-extensions \
gnome-text-editor \
gnome-tweaks \
gvfs-backends \
htop \
intel-microcode \
libspa-0.2-bluetooth \
linux-headers-amd64 \
loupe \
nautilus \
network-manager-gnome \
nfs-common \
nmap \
openfortivpn \
p7zip-full \
papers \
pipewire \
pipewire-alsa \
pipewire-pulse \
remmina \
showtime \
system-config-printer \
tilix \
tio \
ufw \
unzip \
virt-manager \
wget \
whois \
wireplumber

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

echo "GNOME installation completed. Reboot to complete the setup."

echo ""
echo ""
