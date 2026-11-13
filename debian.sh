#!/bin/bash

# Usage: bash ./debian.sh gnome|xfce
# Debian 13 (trixie) post-install script.

set -euo pipefail

DE="${1:-}"

case "$DE" in
  gnome)
    CORE=(
      gnome-shell
      gdm3
    )
    EXTRA=(
      blanket
      file-roller
      gnome-calculator
      gnome-clocks
      gnome-logs
      gnome-session
      gnome-shell-extension-dash-to-panel
      gnome-shell-extensions
      gnome-text-editor
      gnome-themes-extra
      gnome-tweaks
      loupe
      nautilus
      papers
      showtime
      tilix
    )
    ;;
  xfce)
    CORE=(
      xfce4
      lightdm
    )
    EXTRA=(
      atril
      blueman
      geany
      lightdm-gtk-greeter-settings
      mate-polkit
      mousepad
      parole
      pavucontrol
      pkexec
      qalculate-gtk
      ristretto
      thunar
      thunar-archive-plugin
      thunar-volman
      xarchiver
      xfce4-battery-plugin
      xfce4-clipman-plugin
      xfce4-netload-plugin
      xfce4-notifyd
      xfce4-places-plugin
      xfce4-power-manager-plugins
      xfce4-screensaver
      xfce4-screenshooter
      xfce4-taskmanager
      xfce4-terminal
      xfce4-timer-plugin
      xfce4-weather-plugin
      xfce4-whiskermenu-plugin
    )
    ;;
  *)
    echo "Usage: $0 gnome|xfce"
    exit 1
    ;;
esac

BASE=(
  amd64-microcode
  avahi-daemon
  bash-completion
  bind9-dnsutils
  bluez
  build-essential
  cifs-utils
  cups
  cups-pk-helper
  curl
  firefox-esr
  firmware-iwlwifi
  firmware-linux-nonfree
  firmware-realtek
  fonts-inter
  fonts-jetbrains-mono
  fonts-noto-color-emoji
  foomatic-db
  gnome-disk-utility
  gnome-keyring
  gstreamer1.0-libav
  gstreamer1.0-plugins-ugly
  gvfs-backends
  htop
  intel-microcode
  ipp-usb
  libpam-gnome-keyring
  libspa-0.2-bluetooth
  libvirt-daemon-system
  network-manager-gnome
  nfs-common
  nmap
  openfortivpn
  pipewire-audio
  putty
  remmina
  speech-dispatcher
  system-config-printer
  tio
  udisks2
  ufw
  unzip
  virt-manager
  wget
  whois
  zip
)

echo "Installing ${DE^^} and applications..."

sudo apt update

sudo apt install -y "${CORE[@]}" "${BASE[@]}" "${EXTRA[@]}"

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

echo "${DE^^} installation completed. Reboot to complete the setup."

echo ""
echo ""
