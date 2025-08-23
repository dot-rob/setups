sudo apt update -y
sudo apt install -y linux-headers-$(uname -r) gnome-shell pipewire pipewire-audio wireplumber \
bash-completion \
blanket \
build-essential \
cups \
celluloid \
firefox-esr \
gnome-calculator \
gnome-clocks \
gnome-disk-utility \
gnome-keyring \
gnome-shell-extensions \
gnome-shell-extension-dash-to-panel \
gnome-system-monitor \
gnome-text-editor \
gnome-themes-extra \
gnome-tweaks \
gnome-weather \
htop \
libreoffice \
loupe \
nautilus \
nmap \
openfortivpn \
papers \
putty \
remmina \
tilix \
unattended-upgrades
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
