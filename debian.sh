sudo apt install -y xfce4 pipewire pipewire-alsa pipewire-audio pipewire-pulse pavucontrol wireplumber \
atril \
arc-theme greybird-gtk-theme \
bash-completion \
bluetooth blueman bluez-firmware libspa-0.2-bluetooth \
build-essential \
cups cups-pk-helper ipp-usb \
curl wget rsync \
firefox-esr \
firmware-linux-nonfree firmware-iwlwifi firmware-realtek fwupd \
fonts-inter \
fonts-jetbrains-mono \
foomatic-db \
geany \
gnome-disk-utility \
gvfs \
gvfs-backends \
gvfs-fuse \
htop ncdu tree \
intel-microcode amd64-microcode \
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
ufw \
unzip p7zip-full \
xdg-utils xdg-user-dirs \
xfce4-battery-plugin \
xfce4-netload-plugin \
xfce4-power-manager \
xfce4-pulseaudio-plugin \
xfce4-screenshooter \
xfce4-taskmanager
echo ""
echo ""
sudo usermod -aG dialout rob
xdg-user-dirs-update
echo ""
echo ""
echo "Debian XFCE installation finished! Please reboot now."
