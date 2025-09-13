sudo apt install -y plasma-desktop sddm pipewire pipewire-audio wireplumber \
ark \
bash-completion \
build-essential \
cups \
dolphin \
htop \
gwenview \
kde-spectacle \
konsole \
linux-headers-amd64 \
nmap \
okular \
openfortivpn \
pkexec \
print-manager
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
echo "Debian KDE script finished! Please reboot now."
