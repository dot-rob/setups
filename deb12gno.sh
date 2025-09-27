sudo apt update -y
sudo apt install -y gnome-shell pipewire pipewire-audio wireplumber \
bash-completion \
build-essential \
cups \
eog \
evince \
gnome-calculator \
gnome-clocks \
gnome-disk-utility \
gnome-keyring \
gnome-shell-extension-dash-to-panel \
gnome-shell-extensions \
gnome-system-monitor \
gnome-text-editor \
gnome-themes-extra \
gnome-tweaks \
htop \
linux-headers-amd64 \
nautilus \
nmap \
openfortivpn \
putty \
remmina \
tilix
echo ""
echo ""
sudo apt install -y flatpak gnome-software-plugin-flatpak xdg-desktop-portal-gnome
echo ""
echo ""
sudo apt -y autoremove --purge
echo ""
echo ""
sudo adduser rob dialout
echo ""
echo ""
echo "Debian GNOME script finished! Please reboot now."
