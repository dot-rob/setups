#!/bin/bash
set -e

echo "=========================================================="
echo " PHASE 2: DESKTOP CUSTOMIZATION & AUTOMATION              "
echo "=========================================================="

# 1. Fetch themes & assets
echo "--> Downloading visual assets and themes..."
mkdir -p ~/Git && cd ~/Git
[ ! -d "wallpapers" ] && git clone https://github.com/dot-rob/wallpapers
[ ! -d "Qogir-theme" ] && git clone https://github.com/vinceliuice/Qogir-theme.git
[ ! -d "Qogir-icon-theme" ] && git clone https://github.com/vinceliuice/Qogir-icon-theme.git

echo "--> Building and installing themes..."
cd Qogir-theme && ./install.sh
cd ../Qogir-icon-theme && ./install.sh

# 2. Apply Custom Themes & Window Styles
echo "--> Applying Qogir-Dark themes..."
xfconf-query -c xsettings -p /Net/ThemeName -s "Qogir-Dark"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Qogir-Dark"
xfconf-query -c xfwm4 -p /general/theme -s "Qogir-Dark"

# 3. Configure Fonts & Hinting
echo "--> Customizing desktop typography..."
xfconf-query -c xfwm4 -p /general/title_font -s "Inter Bold 10"
xfconf-query -c xsettings -p /Gtk/FontName -s "Inter Regular 10"
xfconf-query -c xsettings -p /Gtk/MonospaceFontName -s "JetBrains Mono 10"
xfconf-query -c xsettings -p /Xft/Hinting -s 1
xfconf-query -c xsettings -p /Xft/HintStyle -s "hintmedium"

# 4. Global 1.25 High-DPI UI Scaling
echo "--> Setting layout scale to 1.25 (120 DPI)..."
xfconf-query -c xsettings -p /Xft/DPI -s 120

# 5. Hide Cluttered Desktop Icons
echo "--> Hiding system desktop icons..."
xfconf-query -c xfce4-desktop -p /desktop-icons/style -s 0

# 6. Map Shortcuts
echo "--> Mapping Super+D to Rofi..."
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>d" -n -t string -s "rofi -show drun"

# 7. Delete Bottom Dock & Customize Top Panel Modules
echo "--> Optimizing taskbar and panel system..."
if xfconf-query -c xfce4-panel -p /panels/panel-2 >/dev/null 2>&1; then
    xfconf-query -c xfce4-panel -p /panels/panel-2 -r -R
fi
xfconf-query -c xfce4-panel -p /panels -s 1 -t int -a

# Programmatically append your status tray plugins to panel-1
# Find out the next available plugin IDs and map them to panel 1
xfconf-query -c xfce4-panel -p /plugins/plugin-battery -n -t string -s "battery"
xfconf-query -c xfce4-panel -p /plugins/plugin-netload -n -t string -s "netload"
xfconf-query -c xfce4-panel -p /plugins/plugin-pulse -n -t string -s "pulseaudio"

# Add them to the end of the active panel layout array
# (Fetches existing layout IDs, appends battery, netload, pulse)
CURRENT_IDS=$(xfconf-query -c xfce4-panel -p /panels/panel-1/plugin-ids | tr '\n' ' ' || echo "1 2 3 4 5")
xfconf-query -c xfce4-panel -p /panels/panel-1/plugin-ids -r || true
xfconf-query -c xfce4-panel -p /panels/panel-1/plugin-ids -n -a \
    $(for id in $CURRENT_IDS; do echo "-t int -s $id"; done) \
    -t string -s "battery" -t string -s "netload" -t string -s "pulse"

# 8. Inject Cisco SSH Compatibility
echo "--> Dropping legacy Cisco SSH cryptographic rules..."
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

# 9. Configure Login Screen Greeter Style (LightDM)
echo "--> Linking styling configurations to login screen greeter..."
sudo mkdir -p /etc/lightdm/lightdm-gtk-greeter.conf.d/
sudo tee /etc/lightdm/lightdm-gtk-greeter.conf.d/90_custom.conf > /dev/null << 'EOF'
[greeter]
theme-name = Qogir-Dark
icon-theme-name = Qogir-Dark
font-name = Inter Regular 10
background = /usr/share/images/desktop-base/default
EOF

# 10. Force restart panel to apply structural changes instantly
echo "--> Refreshing live user environment layout..."
xfce4-panel --restart

echo ""
echo "=========================================================="
echo " POST-INSTALL COMPLETED! SUCCESSFUL 1.0 DEPLOYMENT        "
echo "=========================================================="
echo "All settings, themes, shortcuts, scales, and ciphers are live."
echo ""