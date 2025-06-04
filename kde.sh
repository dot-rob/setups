sudo apt install -y linux-headers-$(uname -r) plasma-desktop sddm ark bash-completion build-essential cups dolphin fonts-jetbrains-mono foomatic-db htop kde-spectacle konsole nmap pipewire-audio pkexec print-manager


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
