sudo apt update -y && sudo apt upgrade -y
sudo apt install -y xfce4 lightdm lightdm-gtk-greeter-settings xfce4-battery-plugin xfce4-notifyd xfce4-power-manager xfce4-screenshooter xfce4-taskmanager thunar-archive-plugin xarchiver tilix ristretto parole galculator atril menulibre geany gigolo gvfs gvfs-backends mousepad network-manager-gnome system-config-printer firefox-esr
sudo apt install -y linux-headers-$(uname -r) build-essential remmina putty iproute2 nmap htop fonts-liberation2 fonts-clear-sans fonts-jetbrains-mono cups openprinting-ppds zip unzip
sudo apt install -y virt-manager
sudo adduser rob libvirt
sudo adduser rob dialout
echo ""
echo ""
echo "Debian XFCE script finished! Please reboot now."
echo ""
echo ""
