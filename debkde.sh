#!/bin/bash

set -euo pipefail

echo "Installing KDE and applications..."

sudo apt update

sudo apt install -y \
plasma-desktop \
sddm \
amd64-microcode \
ark \
bash-completion \
bind9-dnsutils \
bluedevil \
bluez \
breeze-gtk-theme \
build-essential \
cifs-utils \
cups \
cups-pk-helper \
curl \
dolphin \
ffmpegthumbs \
firefox-esr \
firmware-iwlwifi \
firmware-linux-nonfree \
firmware-realtek \
fonts-inter \
fonts-jetbrains-mono \
foomatic-db \
gvfs-backends \
gwenview \
haruna \
htop \
intel-microcode \
isoimagewriter \
kate \
kcalc \
kclock \
kdegraphics-thumbnailers \
kde-spectacle \
kio-extras \
konsole \
ksystemlog \
kwrite \
libspa-0.2-bluetooth \
libvirt-daemon-system \
network-manager \
nfs-common \
nmap \
okular \
openfortivpn \
pipewire-audio \
pkexec \
plasma-nm \
print-manager \
putty \
qt6-image-formats-plugins \
remmina \
speech-dispatcher \
tio \
udisks2 \
ufw \
unzip \
upower \
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

echo "KDE installation completed. Reboot to complete the setup."

echo ""
echo ""
