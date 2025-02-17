sudo apt install -y linux-headers-$(uname -r) gnome-calculator gnome-clocks gnome-disk-utility gnome-keyring gnome-screenshot gnome-shell gnome-shell-extensions gnome-system-monitor gnome-terminal gnome-text-editor gnome-themes-extra gnome-tweaks gnome-weather bash-completion build-essential celluloid eog evince fonts-cantarell fonts-clear-sans fonts-jetbrains-mono fonts-liberation fonts-noto htop nautilus nmap openfortivpn cups openprinting-ppds pipewire-audio putty remmina tlp tlp-rdw
echo ""
echo ""
sudo adduser rob dialout
echo ""
echo ""
sleep 3
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
echo "Debian script finished! Please reboot now."
echo ""
echo ""
