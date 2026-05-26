sudo apt update -y
sudo apt install -y xfce4 pipewire pipewire-audio wireplumber \
atril \
bash-completion \
build-essential \
cups \
firefox-esr \
fonts-inter \
fonts-jetbrains-mono \
foomatic-db \
geany \
gigolo \
gnome-disk-utility \
gvfs \
gvfs-backends \
iptables \
lightdm-gtk-greeter-settings \
linux-headers-amd64 \
mousepad \
network-manager-gnome \
putty \
qalculate-gtk \
remmina \
ristretto \
system-config-printer \
thunar-archive-plugin \
xdg-utils \
xfce4-battery-plugin \
xfce4-netload-plugin \
xfce4-power-manager \
xfce4-screenshooter \
xfce4-taskmanager \
xfce4-terminal
echo ""
echo ""
#sudo apt install -y flatpak xdg-desktop-portal xdg-desktop-portal-xapp xdg-desktop-portal-gtk
echo ""
echo ""
sudo apt -y autoremove --purge
echo ""
echo ""
sudo adduser rob dialout
echo ""
echo ""
echo "Debian XFCE script finished! Please reboot now."
