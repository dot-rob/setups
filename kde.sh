sudo apt install -y linux-headers-$(uname -r) plasma-desktop sddm ark bash-completion build-essential cups dolphin foomatic-db htop kde-spectacle konsole low-memory-monitor nmap openfortivpn pipewire pipewire-pulse pipewire-audio pkexec print-manager putty remmina wireplumber
echo ""
echo ""
sudo apt install -y flatpak plasma-discover-backend-flatpak
echo ""
echo ""
sudo apt autoremove -y
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
