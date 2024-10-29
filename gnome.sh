sudo apt install -y gnome-shell gnome-calculator gnome-clocks gnome-disk-utility gnome-keyring gnome-screenshot gnome-shell-extensions gnome-software gnome-text-editor gnome-themes-extra gnome-tweaks tilix nautilus eog evince celluloid pipewire-audio
sudo apt install -y linux-headers-$(uname -r) build-essential remmina putty iproute2 nmap htop fonts-liberation2 fonts-cantarell cups openprinting-ppds openfortivpn zip unzip
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
echo "Debian Gnome script finished! Please reboot now."
echo ""
echo ""
