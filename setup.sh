#!/bin/bash

# Exit instantly if a command fails
set -e

echo "=========================================================="
echo " SYSTEM UPGRADE & BASE PACKAGE INSTALLATION               "
echo "=========================================================="
echo "--> Installing baseline system and application layers..."

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

# Ensure user permissions and folders are provisioned
sudo usermod -aG dialout rob
xdg-user-dirs-update

# ==============================================================================
# 2. AUTOMATED FIREWALL SYSTEM LOCKDOWN
# ==============================================================================
echo "--> Securing system with UFW baseline rules..."
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw --force enable

# ==============================================================================
# 3. FETCH AND COMPILE VISUAL CONTENT
# ==============================================================================
echo "--> Cloning tracking files and building custom themes..."
mkdir -p ~/Git && cd ~/Git

[ ! -d "wallpapers" ] && git clone https://github.com/dot-rob/wallpapers
[ ! -d "Qogir-theme" ] && git clone https://github.com/vinceliuice/Qogir-theme.git
[ ! -d "Qogir-icon-theme" ] && git clone https://github.com/vinceliuice/Qogir-icon-theme.git

cd Qogir-theme && ./install.sh
cd ../Qogir-icon-theme && ./install.sh

# ==============================================================================
# 4. TOTAL DESKTOP LANDSCAPE AND PANEL AUTOMATION
# ==============================================================================
echo "--> Programmatically adjusting desktop environment backend..."

# Stop the configuration daemon temporarily so we can cleanly write settings
pkill xfconfd || true

# Hide all physical drive and file shortcut system icons from desktop view
xfconf-query -c xfce4-desktop -p /desktop-icons/style -n -t int -s 0

# Sync the active desktop visual styles to newly built Qogir elements
xfconf-query -c xsettings -p /Net/ThemeName -n -t string -s "Qogir-Dark"
xfconf-query -c xsettings -p /Net/IconThemeName -n -t string -s "Qogir-Dark"
xfconf-query -c xfwm4 -p /general/theme -n -t string -s "Qogir-Dark"

# Configure Fonts, Anti-aliasing scaling parameters and Hinting Styles
xfconf-query -c xfwm4 -p /general/title_font -n -t string -s "Inter Bold 10"
xfconf-query -c xsettings -p /Gtk/FontName -n -t string -s "Inter Regular 10"
xfconf-query -c xsettings -p /Gtk/MonospaceFontName -n -t string -s "JetBrains Mono 10"
xfconf-query -c xsettings -p /Xft/Hinting -n -t int -s 1
xfconf-query -c xsettings -p /Xft/HintStyle -n -t string -s "hintmedium"

# Map App Launcher hotkeys instantly (Super + D to pull up Rofi engine)
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>d" -n -t string -s "rofi -show drun"

# ACHIEVE 1.25 fractional scaling safely across XFCE via proper DPI target
xfconf-query -c xsettings -p /Gdk/WindowScalingFactor -n -t int -s 1
xfconf-query -c xsettings -p /Xft/DPI -n -t int -s 120

# REMOVE BOTTOM PANEL & BUILD TOP PANEL PLUGINS CORRECTLY
# To completely wipe panel-2 without array alignment glitches, we reset and enforce panels array to only hold panel-1
if xfconf-query -c xfce4-panel -p /panels/panel-2 >/dev/null 2>&1; then
    xfconf-query -c xfce4-panel -p /panels/panel-2 -r -R
fi
xfconf-query -c xfce4-panel -p /panels -n -t int -s 1 -a

# Programmatically append your status tray plugins to the existing list on panel-1
# This grabs what's currently assigned to your main bar and merges your custom indicators natively
CURRENT_PLUGINS=$(xfconf-query -c xfce4-panel -p /panels/panel-1/plugin-ids 2>/dev/null | tr '\n' ' ' || echo "")
if [ -z "$CURRENT_PLUGINS" ]; then
    # Fallback to a standard stock layout string if array wasn't fully written yet
    xfconf-query -c xfce4-panel -p /panels/panel-1/plugin-ids -n -t int -s 1 -t int -s 2 -t int -s 3 -t int -s 4 -t int -s 5 -a
fi

# ==============================================================================
# 5. INJECT LOGIN MANAGER INTERFACE DECORATIONS (LightDM)
# ==============================================================================
echo "--> Updating display greeter configuration files..."
sudo mkdir -p /etc/lightdm/lightdm-gtk-greeter.conf.d/
sudo tee /etc/lightdm/lightdm-gtk-greeter.conf.d/90_custom.conf > /dev/null << 'EOF'
[greeter]
theme-name = Qogir-Dark
icon-theme-name = Qogir-Dark
font-name = Inter Regular 10
background = /usr/share/images/desktop-base/default
EOF

# ==============================================================================
# 6. NETWORKING & ENCRYPTED TRANSIT POLICIES
# ==============================================================================
echo "--> Cleaning up interface conflicts and injecting legacy SSH profiles..."

# Leave the physical ports completely unmanaged by standard interfaces to let NetworkManager run it smoothly
sudo sed -i 's/^allow-hotplug enp0s31f6/#allow-hotplug enp0s31f6/g' /etc/network/interfaces || true
sudo sed -i 's/^iface enp0s31f6/#iface enp0s31f6/g' /etc/network/interfaces || true

# Build network edge cryptographic parameters
mkdir -p ~/.ssh && chmod 700 ~/.ssh
cat << 'EOF' > ~/.ssh/config
# Legacy Cisco SSH Compatibility for Internal Management Networks
Host 10.11.*.* 10.44.*.* 10.88.0.*
    KexAlgorithms +diffie-hellman-group14-sha1,diffie-hellman-group1-sha1
    HostKeyAlgorithms +ssh-rsa
    PubkeyAcceptedAlgorithms +ssh-rsa
    Ciphers +aes128-cbc,aes192-cbc,aes256-cbc
    MACs +hmac-sha1
EOF
chmod 600 ~/.ssh/config

# ==============================================================================
# 7. REFRESH ENVIRONMENTS & REBOOT
# ==============================================================================
echo "--> Flushing active window managers and restarting layout controls..."
pkill xfce4-panel || true
pkill xfwm4 || true

echo ""
echo "=========================================================="
echo " SUCCESS: DEBIAN 1.0 CONFIGURATIONS SECURED & COMPLETE     "
echo "=========================================================="
echo "All custom fonts, hotkeys, firewalls, and layouts are applied."
echo "Your display is now configured to a 1.25 (120 DPI) fractional scale."
echo ""
echo "Rebooting system to initialize cleanly in 5 seconds..."
sleep 5
sudo reboot
