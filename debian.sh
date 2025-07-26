sudo apt install -y linux-headers-$(uname -r) gnome-shell gnome-shell-extensions gnome-shell-extension-arc-menu gnome-shell-extension-dash-to-panel gnome-disk-utility gnome-keyring gnome-screenshot gnome-system-monitor gnome-themes-extra gnome-tweaks bash-completion build-essential cups foomatic-db htop low-memory-monitor nautilus nmap openfortivpn pipewire pipewire-pulse pipewire-audio putty remmina tilix wireplumber
echo ""
echo ""
sudo apt install -y flatpak gnome-software-plugin-flatpak xdg-desktop-portal-gnome
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
