#!/bin/bash

# Exit instantly if a command fails
set -e

echo "=========================================================="
echo " STARTING FULL AUTOMATED DEBIAN XFCE DEPLOYMENT           "
echo "=========================================================="

# ==============================================================================
# 1. BASE PACKAGE INSTALLATION
# ==============================================================================
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

# Clone assets safely (skip if they already exist to prevent crash exits)
[ ! -d "wallpapers" ] && git clone https://github.com/dot-rob/wallpapers
[ ! -d "Qogir-theme" ] && git clone https://github.com/vinceliuice/Qogir-theme.git
[ ! -d "Qogir-icon-theme" ] && git clone https://github.com/vinceliuice/Qogir-icon-theme.git

cd Qogir-theme && ./install.sh
cd ../Qogir-icon-theme && ./install.sh

# ==============================================================================
# 4. TOTAL DESKTOP LANDSCAPE AND PANEL AUTOMATION
# ==============================================================================
echo "--> Programmatically wiping bottom panel and configuring workspace environment..."

# Safely query existing panels to identify the secondary/dock layout
if xfconf-query -c xfce4-panel -p /panels/panel-2 >/dev/null 2>&1; then
    xfconf-query -c xfce4-panel -p /panels/panel-2 -r -R
    # Refresh panel layout array to only reference primary top bar
    xfconf-query -c xfce4-panel -p /panels -a -t int -s 1
fi

# Hide all physical drive and file shortcut system icons from desktop view
xfconf-query -c xfce4-desktop -p /desktop-icons/style -n -t int -s 0

# Sync the active desktop visual styles to newly built Qogir elements
xfconf-query -c xsettings -p /Net/ThemeName -s "Qogir-Dark"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Qogir-Dark"
xfconf-query -c xfwm4 -p /general/theme -s "Qogir-Dark"

# Configure Fonts, Anti-aliasing scaling parameters and Hinting Styles
xfconf-query -c xfwm4 -p /general/title_font -s "Inter Bold 10"
xfconf-query -c xsettings -p /Gtk/FontName -s "Inter Regular 10"
xfconf-query -c xsettings -p /Gtk/MonospaceFontName -s "JetBrains Mono 10"
xfconf-query -c xsettings -p /Xft/Hinting -s 1
xfconf-query -c xsettings -p /Xft/HintStyle -s "hintmedium"

# Map App Launcher hotkeys instantly (Super + D to pull up Rofi engine)
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>d" -n -t string -s "rofi -show drun"

# Automatically apply 1.25 System UI Global Scaling Factor
xfconf-query -c xsettings -p /Gdk/WindowScalingFactor -n -t int -s 1
xfconf-query -c xsettings -p /Xft/DPI -n -t int -s 120

# Add native volume control, system monitoring, and screen capturing modules straight into panel-1
xfconf-query -c xfce4-panel -p /plugins/plugin-battery -n -t string -s "battery"
xfconf-query -c xfce4-panel -p /plugins/plugin-netload -n -t string -s "netload"
xfconf-query -c xfce4-panel -p /plugins/plugin-pulse -n -t string -s "pulseaudio"

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
# 6. MANAGEMENT SYSTEMS & ENCRYPTED TRANSIT POLICIES
# ==============================================================================
echo "--> Resolving NetworkManager system controls and SSH routing pathways..."

# Comment native configurations out to leave local physical sockets free for NetworkManager
sudo sed -i 's/^allow-hotplug enp0s31f6/#allow-hotplug enp0s31f6/g' /etc/network/interfaces
sudo sed -i 's/^iface enp0s31f6/#iface enp0s31f6/g' /etc/network/interfaces

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
# 7. POST-INSTALL COMPLETION
# ==============================================================================
echo ""
echo "=========================================================="
echo " SUCCESS: DEBIAN 1.0 INSTALLED & CONFIGURED               "
echo "=========================================================="
echo "All packages, keys, panels, and configurations are ready."
echo ""
echo "Rebooting system to finalize environment initialization in 5 seconds..."
sleep 5
sudo reboot
