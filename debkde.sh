#!/bin/bash

set -euo pipefail

echo "Installing KDE and applications..."

sudo apt install -y \
plasma-desktop \
sddm \
ark \
bash-completion \
bind9-dnsutils \
bluedevil \
breeze-gtk-theme \
build-essential \
cifs-utils \
cups \
cups-pk-helper \
curl \
dolphin \
fd-find \
ffmpegthumbs \
firefox-esr \
firmware-iwlwifi \
firmware-linux-nonfree \
firmware-realtek \
fonts-inter \
fonts-jetbrains-mono \
foomatic-db \
fwupd \
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
linux-headers-amd64 \
ncdu \
network-manager \
nfs-common \
nmap \
okular \
openfortivpn \
p7zip-full \
partitionmanager \
pipewire \
pipewire-alsa \
pipewire-pulse \
plasma-nm \
print-manager \
putty \
qt6-image-formats-plugins \
remmina \
tio \
traceroute \
tree \
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

echo "KDE installation completed. Reboot to complete the setup."

echo ""
echo ""
