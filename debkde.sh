sudo apt install -y linux-headers-$(uname -r) plasma-desktop sddm ark bash-completion build-essential cups dolphin fonts-jetbrains-mono fonts-liberation foomatic-db gwenview htop kate kde-spectacle konsole kwrite nmap okular pipewire-audio pkexec print-manager putty remmina tlp tlp-rdw
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
