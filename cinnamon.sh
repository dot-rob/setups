sudo apt install -y linux-headers-$(uname -r) bash-completion build-essential cinnamon cups fonts-liberation2 foomatic-db htop low-memory-monitor nmap openfortivpn pipewire pipewire-pulse pipewire-audio putty remmina wireplumber

gnome-screenshot

#atril cups fonts-liberation2 foomatic-db geany gigolo gvfs gvfs-backends htop low-memory-monitor mousepad network-manager-gnome nmap openfortivpn parole pipewire pipewire-pulse pipewire-audio putty qalculate-gtk remmina ristretto rofi system-config-printer thunar-archive-plugin wireplumber
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
echo "Debian XFCE script finished! Please reboot now."
echo ""
echo ""
