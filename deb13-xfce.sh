sudo apt install -y linux-headers-$(uname -r) xfce4 pipewire pipewire-pulse pipewire-audio wireplumber \
atril \
bash-completion \
build-essential \
cups \
geany \
gigolo \
gvfs \
gvfs-backends \
lightdm-gtk-greeter-settings \
mousepad \
network-manager-gnome \
nmap \
openfortivpn \
putty \
qalculate-gtk \
remmina \
ristretto \
rofi \
system-config-printer \
thunar-archive-plugin \
xfce4-battery-plugin \
xfce4-netload-plugin \
xfce4-power-manager \
xfce4-screenshooter \
xfce4-taskmanager \
xfce4-terminal /
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
