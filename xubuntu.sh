#!/bin/bash

set -euo pipefail

echo "Installing additional XFCE applications..."

sudo apt install --simulate \
atril \
bash-completion \
bind9-dnsutils \
build-essential \
cifs-utils \
cups \
cups-pk-helper \
curl \
firefox \
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
mousepad \
network-manager-gnome \
nfs-common \
nmap \
openfortivpn \
parole \
putty \
qalculate-gtk \
remmina \
ristretto \
system-config-printer \
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

echo "XFCE installation completed. Reboot to complete the setup."

echo ""
echo ""
