sudo apt install -y xfce4 lightdm lightdm-gtk-greeter-settings xfce4-battery-plugin xfce4-notifyd xfce4-power-manager xfce4-screenshooter xfce4-taskmanager thunar-archive-plugin file-roller tilix ristretto parole galculator atril menulibre geany gigolo gvfs gvfs-backends mousepad network-manager-gnome system-config-printer
sudo apt install -y linux-headers-$(uname -r) build-essential remmina putty iproute2 nmap htop fonts-liberation2 fonts-clear-sans fonts-jetbrains-mono cups openprinting-ppds zip unzip
sudo apt install -y virt-manager
sudo adduser rob libvirt
sudo adduser rob dialout
echo ""
echo ""
sudo install -d -m 0755 /etc/apt/keyrings
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null
echo ' Package: * Pin: origin packages.mozilla.org Pin-Priority: 1000 ' | sudo tee /etc/apt/preferences.d/mozilla
sudo apt update -y
sudo apt install firefox -y
echo ""
echo ""
echo "Debian XFCE script finished! Please reboot now."
echo ""
echo ""
