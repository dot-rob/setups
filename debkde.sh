sudo apt install -y linux-headers-$(uname -r) plasma-desktop sddm bash-completion build-essential dolphin konsole cups fonts-clear-sans fonts-jetbrains-mono fonts-liberation foomatic-db print-manager htop nmap pipewire-audio tlp tlp-rdw
sudo apt install -y flatpak plasma-discover-backend-flatpak
echo ""
echo ""
sudo adduser rob dialout
sudo adduser rob lpadmin
echo ""
echo ""
sleep 3
echo "Debian KDE script finished! Please reboot now."
echo ""
echo ""
