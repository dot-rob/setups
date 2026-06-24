sudo apt update -y
sudo apt install -y plasma-desktop sddm pipewire pipewire-pulse pipewire-audio wireplumber \
ark \
bash-completion \
build-essential \
cups \
dolphin \
firefox-esr \
htop \
gwenview \
kate \
kcalc \
kclock \
kde-spectacle \
konsole \
linux-headers-amd64 \
okular \
pkexec \
print-manager \
putty \
remmina \
vlc
echo ""
echo ""
sudo adduser rob dialout
sudo adduser rob lpadmin
echo ""
echo ""
echo "Debian KDE script finished! Please reboot now."
