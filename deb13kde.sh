sudo apt update -y
sudo apt install -y plasma-desktop sddm pipewire pipewire-audio wireplumber \
ark \
bash-completion \
build-essential \
cups \
dolphin \
firefox-esr \
foomatic-db \
htop \
gwenview \
kate \
kcalc \
kclock \
kde-spectacle \
konsole \
linux-headers-amd64 \
nmap \
okular \
openfortivpn \
pkexec \
print-manager \
putty \
remmina \
vlc
echo ""
echo ""
sudo apt install -y flatpak plasma-discover-backend-flatpak
echo ""
echo ""
sudo apt -y autoremove --purge
echo ""
echo ""
sudo adduser rob dialout
sudo adduser rob lpadmin
echo ""
echo ""
echo "Debian KDE script finished! Please reboot now."
