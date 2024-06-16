sudo apt install -y sway swaybg swayidle swayimg swaylock light xwayland qt5-style-plugins waybar wofi pipewire-audio network-manager-gnome system-config-printer
sudo apt install -y firefox-esr remmina putty cups zip unzip
mkdir -p ~/.config/sway ~/.config/waybar ~/.config/wofi ~/.config/foot
cp /etc/sway/config ~/.config/sway/config
cp /etc/xdg/waybar/config ~/.config/waybar
cp /etc/xdg/foot/foot.ini ~/.config/foot/
chmod +x ~/.config/sway/*.sh
