sudo apt update -y
sudo apt install -y linux-headers-$(uname -r) gnome-shell pipewire pipewire-audio wireplumber \
bash-completion \
build-essential \
cups \
gnome-disk-utility \
gnome-keyring \
gnome-screenshot \
gnome-shell-extensions \
gnome-shell-extension-dash-to-panel \
gnome-system-monitor \
gnome-themes-extra \
gnome-tweaks \
htop \
nautilus \
nmap \
openfortivpn \
tilix
echo ""
echo ""
sudo apt install -y flatpak gnome-software-plugin-flatpak xdg-desktop-portal-gnome
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo ""
echo ""
sudo apt-get -y autoremove --purge
sudo apt-get -y clean
echo ""
echo ""
sudo adduser rob dialout
echo ""
echo ""
sleep 3
echo "Debian GNOME script finished! Please reboot now."
