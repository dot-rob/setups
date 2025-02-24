sudo apt install -y linux-headers-$(uname -r) gnome-disk-utility gnome-keyring gnome-screenshot gnome-shell gnome-shell-extensions gnome-system-monitor gnome-themes-extra gnome-tweaks bash-completion build-essential cups fonts-cantarell fonts-clear-sans fonts-jetbrains-mono fonts-liberation foomatic-db htop nautilus nmap openprinting-ppds pipewire-audio tilix tlp tlp-rdw
sudo apt install -y flatpak gnome-software-plugin-flatpak
sudo flatpak override --filesystem=xdg-config/gtk-3.0
echo ""
echo ""
sudo adduser rob dialout
echo ""
echo ""
sleep 3
echo "Debian script finished! Please reboot now."
echo ""
echo ""
