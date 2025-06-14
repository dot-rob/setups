sudo apt install -y linux-headers-$(uname -r) xfce4 lightdm-gtk-greeter lightdm-gtk-greeter-settings xfce4-battery-plugin xfce4-netload-plugin xfce4-power-manager xfce4-screenshooter xfce4-taskmanager xfce4-terminal atril bash-completion build-essential cups fonts-liberation2 foomatic-db geany gigolo gvfs gvfs-backends htop mousepad network-manager-gnome nmap openfortivpn parole pipewire pipewire-pulse pipewire-audio putty qalculate-gtk remmina ristretto rofi system-config-printer thunar-archive-plugin wireplumber unzip zipAdd commentMore actions
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
