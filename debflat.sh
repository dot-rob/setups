sudo apt install -y linux-headers-$(uname -r) gnome-calculator gnome-clocks gnome-disk-utility gnome-keyring gnome-screenshot gnome-shell gnome-shell-extensions gnome-system-monitor gnome-terminal gnome-text-editor gnome-themes-extra gnome-tweaks gnome-weather bash-completion build-essential fonts-cantarell fonts-clear-sans fonts-jetbrains-mono fonts-liberation htop nautilus nmap openfortivpn cups openprinting-ppds pipewire-audio tlp tlp-rdw
echo ""
echo ""
sudo adduser rob dialout
echo ""
echo ""
sudo apt install -y flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo ""
echo ""
echo "Debian script finished! Please reboot now."
echo ""
echo ""
