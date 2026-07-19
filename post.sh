#!/bin/bash
set -e

echo "--> Downloading themes..."
mkdir -p ~/git && cd ~/git
[ ! -d "Qogir-theme" ] && git clone https://github.com/vinceliuice/Qogir-theme.git
[ ! -d "Qogir-icon-theme" ] && git clone https://github.com/vinceliuice/Qogir-icon-theme.git

echo "--> Installing themes..."
cd Qogir-theme && ./install.sh
cd ../Qogir-icon-theme && ./install.sh

echo "--> Applying themes..."
xfconf-query -c xsettings -p /Net/ThemeName -s "Qogir-Dark"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Qogir-Dark"
xfconf-query -c xfwm4 -p /general/theme -s "Qogir-Dark"

echo "--> Customizing typography..."
xfconf-query -c xfwm4 -p /general/title_font -s "Inter Bold 10"
xfconf-query -c xsettings -p /Gtk/FontName -s "Inter Regular 10"
xfconf-query -c xsettings -p /Gtk/MonospaceFontName -s "JetBrains Mono 10"
xfconf-query -c xsettings -p /Xft/Hinting -s 1
xfconf-query -c xsettings -p /Xft/HintStyle -s "hintmedium"

echo "--> Mapping Super+D to Rofi..."
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Super>d" -n -t string -s "rofi -show drun"

# 8. Inject Cisco SSH Compatibility
echo "-->  Adding Cisco SSH..."
mkdir -p ~/.ssh && chmod 700 ~/.ssh
cat << 'EOF' > ~/.ssh/config
Host 10.11.*.* 10.44.*.* 10.88.0.*
    KexAlgorithms +diffie-hellman-group14-sha1,diffie-hellman-group1-sha1
    HostKeyAlgorithms +ssh-rsa
    PubkeyAcceptedAlgorithms +ssh-rsa
    Ciphers +aes128-cbc,aes192-cbc,aes256-cbc
    MACs +hmac-sha1
EOF
chmod 600 ~/.ssh/config
