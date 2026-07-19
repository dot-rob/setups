#!/bin/bash
set -e

echo "=========================================================="
echo " PHASE 1: CORE DEBIAN 1.0 SYSTEM INSTALLATION             "
echo "=========================================================="

# 1. Install all baseline packages
echo "--> Installing desktop, audio, networking, and firmware layers..."
sudo apt update && sudo apt install -y \
xfce4 pipewire pipewire-alsa pipewire-audio pipewire-pulse pavucontrol wireplumber \
atril \
arc-theme greybird-gtk-theme \
bash-completion \
bluetooth blueman bluez-firmware libspa-0.2-bluetooth \
build-essential \
cups cups-pk-helper ipp-usb \
curl wget rsync git \
firefox-esr \
firmware-linux-nonfree firmware-iwlwifi firmware-realtek fwupd \
fonts-inter \
fonts-jetbrains-mono \
foomatic-db \
geany \
gnome-disk-utility \
gvfs \
gvfs-backends \
gvfs-fuse \
htop ncdu tree \
intel-microcode amd64-microcode \
lightdm-gtk-greeter-settings \
linux-headers-amd64 \
lm-sensors smartmontools \
mousepad \
network-manager network-manager-gnome \
openfortivpn \
openssh-client \
putty \
qalculate-gtk \
remmina \
ristretto \
rofi \
system-config-printer \
thunar-archive-plugin file-roller \
thunar-volman \
tilix \
tio \
tumbler \
ufw \
unzip p7zip-full \
xdg-utils xdg-user-dirs \
xfce4-battery-plugin \
xfce4-netload-plugin \
xfce4-power-manager \
xfce4-pulseaudio-plugin \
xfce4-screenshooter \
xfce4-taskmanager

# 2. Basic user provisioning
echo "--> Setting user permissions and standard directories..."
sudo usermod -aG dialout rob
xdg-user-dirs-update

# 3. System Networking & Firewall Defaults
echo "--> Hardening firewall and clearing interface conflicts..."
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw --force enable

sudo sed -i 's/^allow-hotplug enp0s31f6/#allow-hotplug enp0s31f6/g' /etc/network/interfaces || true
sudo sed -i 's/^iface enp0s31f6/#iface enp0s31f6/g' /etc/network/interfaces || true

echo ""
echo "Base system installation complete! Rebooting now."
echo "Log back into your new desktop and run Part 2."
sleep 3
sudo reboot