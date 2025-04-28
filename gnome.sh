sudo apt install -y linux-headers-$(uname -r) gnome-shell gnome-shell-extensions gnome-disk-utility gnome-keyring gnome-screenshot gnome-system-monitor gnome-themes-extra gnome-tweaks bash-completion build-essential cups fonts-liberation foomatic-db htop nautilus nmap openfortivpn pipewire-audio tilix tlp tlp-rdw
sudo apt install -y flatpak gnome-software-plugin-flatpak xdg-desktop-portal-gnome
echo ""
echo ""
sudo adduser rob dialout
echo ""
echo ""
sleep 3
echo "Debian GNOME script finished! Please reboot now."
echo ""
echo ""
