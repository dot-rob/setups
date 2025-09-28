sudo apt update -y
sudo apt install -y gnome-shell pipewire pipewire-audio wireplumber \
bash-completion \
blanket \
build-essential \
cups \
celluloid \
firefox-esr \
foomatic-db \
gnome-calculator \
gnome-clocks \
gnome-disk-utility \
gnome-keyring \
gnome-shell-extensions \
gnome-system-monitor \
gnome-text-editor \
gnome-themes-extra \
gnome-tweaks \
htop \
linux-headers-amd64 \
loupe \
nautilus \
nmap \
openfortivpn \
papers \
putty \
remmina \
tilix
echo ""
echo ""
#sudo apt install -y flatpak gnome-software-plugin-flatpak xdg-desktop-portal-gnome
echo ""
echo ""
sudo apt -y autoremove --purge
echo ""
echo ""
sudo adduser rob dialout
echo ""
echo ""
echo "Debian GNOME script finished! Please reboot now."
