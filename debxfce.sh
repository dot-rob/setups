#!/bin/bash

set -euo pipefail

echo "Installing XFCE and applications..."

sudo apt update

sudo apt install -y \
xfce4 \
lightdm \
amd64-microcode \
atril \
bash-completion \
bind9-dnsutils \
blueman \
bluez \
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
foomatic-db \
geany \
gnome-disk-utility \
gvfs-backends \
htop \
intel-microcode \
libspa-0.2-bluetooth \
libvirt-daemon-system \
mate-polkit \
mousepad \
network-manager-gnome \
nfs-common \
nmap \
openfortivpn \
parole \
pipewire-audio \
pkexec \
putty \
qalculate-gtk \
remmina \
ristretto \
speech-dispatcher \
system-config-printer \
thunar \
thunar-archive-plugin \
tio \
ufw \
unzip \
virt-manager \
wget \
whois \
xarchiver \
xfce4-battery-plugin \
xfce4-clipman-plugin \
xfce4-netload-plugin \
xfce4-notifyd \
xfce4-places-plugin \
xfce4-power-manager-plugins \
xfce4-screenshooter \
xfce4-taskmanager \
xfce4-terminal \
xfce4-timer-plugin \
xfce4-weather-plugin \
xfce4-whiskermenu-plugin \
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

echo "XFCE installation completed. Reboot to complete the setup."

echo ""
echo ""
