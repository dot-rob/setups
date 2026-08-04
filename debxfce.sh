#!/bin/bash

set -euo pipefail

echo "Installing XFCE and applications..."

sudo apt install -y \
xfce4 \
lightdm \
atril \
bash-completion \
bind9-dnsutils \
build-essential \
cifs-utils \
cups \
cups-pk-helper \
curl \
engrampa \
firefox-esr \
firmware-iwlwifi \
firmware-linux-nonfree \
firmware-realtek \
fonts-inter \
fonts-jetbrains-mono \
foomatic-db-compressed-ppds \
openprinting-ppds \
geany \
gnome-disk-utility \
gvfs-backends \
htop \
mousepad \
nfs-common \
nmap \
openfortivpn \
p7zip-full \
parole \
pipewire \
pipewire-alsa \
pipewire-pulse \
putty \
qalculate-gtk \
remmina \
ristretto \
system-config-printer \
thunar \
thunar-archive-plugin \
tio \
ufw \
unzip \
virt-manager \
wget \
whois \
wireplumber \
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

echo "XFCE installation completed. Reboot to complete the setup."

echo ""
echo ""
