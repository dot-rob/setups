sudo apt install -y linux-headers-$(uname -r) gnome-shell gnome-shell-extensions gnome-disk-utility gnome-keyring gnome-screenshot gnome-system-monitor gnome-themes-extra gnome-tweaks bash-completion build-essential cups fonts-liberation2 foomatic-db htop low-memory-monitor nautilus nmap openfortivpn pipewire pipewire-pulse pipewire-audio putty remmina tilix tlp tlp-rdw wireplumber
sudo apt install -y flatpak gnome-software-plugin-flatpak xdg-desktop-portal-gnome
echo ""
echo ""
sudo adduser rob dialout
echo ""
echo ""
sudo apt autoremove -y
echo ""
echo ""
sleep 3
echo "Debian GNOME script finished! Please reboot now."
echo ""
echo ""
