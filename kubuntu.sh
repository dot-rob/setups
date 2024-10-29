sudo apt install -y okular gwenview kcalc kate vlc 
sudo apt install -y remmina putty nmap htop fonts-jetbrains-mono openfortivpn cups
sudo apt install -y virt-manager
sudo adduser rob libvirt
sudo adduser rob dialout
sudo adduser rob lpadmin
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
echo "Kubuntu script finished! Please reboot now."
echo ""
echo ""
