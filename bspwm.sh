sudo apt install xorg xinit bspwm sxhkd polybar suckless-tools alacritty geany pcmanfm feh hsetroot compton xfce4-power-manager system-config-printer network-manager-gnome linux-headers-$(uname -r) build-essential net-tools nmap htop cups firefox-esr remmina fonts-clear-sans fonts-liberation2 zip unzip

echo "exec bspwm" >> ~/.xinitrc
mkdir ~/.config/
cd ~/.config/
mkdir bspwm sxhkd polybar
cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
chmod +x ~/.config/bspwm/bspwmrc
cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
cp /etc/polybar/config.ini ~/.config/polybar/
