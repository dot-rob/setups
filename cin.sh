sudo apt update -y && sudo apt upgrade -y
sudo apt install -y cinnamon-core gnome-calculator gnome-clocks gnome-disk-utility gnome-screenshot gnome-text-editor gnome-themes-extra tilix eog evince celluloid
sudo apt install -y linux-headers-$(uname -r) remmina putty firefox-esr build-essential iproute2 nmap htop fonts-clear-sans fonts-jetbrains-mono fonts-liberation2 cups zip unzip
sudo apt install -y virt-manager
sudo adduser rob libvirt
sudo adduser rob dialout
echo ""
echo ""
echo "Debian script finished! Please reboot now."
echo ""
echo ""
