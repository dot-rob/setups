sudo apt install -y xfce4 pipewire pipewire-alsa pipewire-audio pipewire-pulse pavucontrol wireplumber \
atril \
bash-completion \
bluetooth blueman bluez-firmware libspa-0.2-bluetooth \
build-essential \
cups cups-pk-helper ipp-usb \
curl wget rsync \
firefox-esr \
firmware-linux-nonfree fwupd \
fonts-inter \
fonts-jetbrains-mono \
foomatic-db \
geany \
gnome-disk-utility \
gvfs \
gvfs-backends \
gvfs-fuse \
htop ncdu tree \
intel-microcode \
lightdm-gtk-greeter-settings \
linux-headers-amd64 \
lm-sensors smartmontools \
mousepad \
network-manager network-manager-gnome \
openfortivpn \
openssh-client \
putty \
qalculate-gtk \
remmina \
ristretto \
rofi \
system-config-printer \
thunar-archive-plugin file-roller \
thunar-volman \
tilix \
tio \
tumbler \
unzip p7zip-full \
xdg-utils \
xfce4-battery-plugin \
xfce4-netload-plugin \
xfce4-power-manager \
xfce4-screenshooter \
xfce4-taskmanager
echo ""
echo ""
sudo usermod -aG dialout rob
echo ""
echo ""
echo "Debian XFCE installation finished! Please reboot now."
