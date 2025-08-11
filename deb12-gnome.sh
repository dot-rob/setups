sudo apt install -y linux-headers-$(uname -r) gnome-shell pipewire pipewire-pulse pipewire-audio wireplumber \
bash-completion \
build-essential \
cups \
foomatic-db \
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
#sudo apt install -y flatpak gnome-software-plugin-flatpak xdg-desktop-portal-gnome
echo ""
echo ""
sudo apt autoremove -y
echo ""
echo ""
sudo adduser rob dialout
echo ""
echo ""
sleep 3
echo "Debian GNOME script finished! Please reboot now."
echo ""
echo ""
