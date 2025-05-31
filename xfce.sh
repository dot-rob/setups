sudo apt install -y linux-headers-$(uname -r) xfce4 lightdm-gtk-greeter lightdm-gtk-greeter-settings xfce4-battery-plugin xfce4-netload-plugin xfce4-power-manager xfce4-screenshooter xfce4-taskmanager atril bash-completion build-essential celluloid cups fonts-liberation2 foomatic-db geany gigolo gvfs gvfs-backends htop mousepad network-manager-gnome nmap openfortivpn pipewire pipewire-pulse pipewire-audio putty qalculate-gtk remmina ristretto rofi system-config-printer thunar-archive-plugin tilix wireplumber unzip zip
sudo apt install -y flatpak
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
