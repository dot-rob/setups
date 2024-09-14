sudo apt update -y && sudo apt upgrade -y
sudo apt install -y gnome-shell gnome-calculator gnome-clocks gnome-disk-utility gnome-keyring gnome-screenshot gnome-shell-extensions gnome-software gnome-text-editor gnome-themes-extra gnome-tweaks tilix nautilus eog evince celluloid firefox-esr 
sudo apt install -y linux-headers-$(uname -r) remmina putty build-essential iproute2 nmap htop fonts-clear-sans fonts-jetbrains-mono fonts-liberation2 fonts-cantarell cups zip unzip
sudo apt install -y virt-manager
sudo adduser rob libvirt
sudo adduser rob dialout
echo ""
echo ""
echo "Debian script finished! Please reboot now."
echo ""
echo ""
