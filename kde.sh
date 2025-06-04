sudo apt install -y linux-headers-$(uname -r) plasma-desktop sddm ark bash-completion build-essential cups dolphin firefox-esr fonts-jetbrains-mono fonts-liberation2 foomatic-db gwenview htop kate kcalc kde-spectacle konsole low-memory-monitor nmap okular openfortivpn pipewire pipewire-pulse pipewire-audio pkexec print-manager putty remmina vlc wireplumber
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
