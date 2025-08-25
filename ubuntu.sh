sudo apt update -y
sudo apt install -y build-essential \
celluloid \
gnome-tweaks \
htop \
libreoffice-calc \
libreoffice-writer \
loupe \
nmap \
openfortivpn \
putty \
remmina
echo ""
echo ""
sudo apt autoremove -y
echo ""
echo ""
sudo adduser rob dialout
echo ""
echo ""
sleep 3
echo "Debian GNOME script finished! Please reboot now."
