sudo apt update -y && sudo apt upgrade -y
sudo apt install -y gnome-core gnome-clocks gnome-screenshot gnome-tweaks tilix celluloid firefox

vanilla-gnome-desktop vanilla-gnome-default-settings

system-config-printer-common system-config-printer-udev

sudo apt install -y linux-headers-$(uname -r) remmina putty build-essential iproute2 nmap htop fonts-jetbrains-mono fonts-liberation2 fonts-cantarell cups openprinting-ppds zip unzip
sudo apt install -y virt-manager
sudo adduser rob libvirt
sudo adduser rob dialout
echo ""
echo ""
echo "Debian script finished! Please reboot now."
echo ""
echo ""
