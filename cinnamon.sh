sudo apt install -y linux-headers-$(uname -r) bash-completion build-essential cinnamon cups fonts-liberation2 foomatic-db geany htop low-memory-monitor nmap openfortivpn pipewire pipewire-pulse pipewire-audio putty remmina wireplumber
echo ""
echo ""
sudo apt install -y flatpak
echo ""
echo ""
sudo apt autoremove -y
echo ""
echo ""
sudo adduser rob dialout
echo ""
echo ""
sleep 3
echo "Debian Cinnamon script finished! Please reboot now."
echo ""
echo ""
