sudo apt install xorg xinit bspwm sxhkd polybar suckless-tools alacritty geany pcmanfm feh hsetroot compton brightnessctl lxappearance arc-theme papirus-icon-theme system-config-printer network-manager-gnome xfce4-power-manager xfce4-polkit

mkdir ~/.config && mkdir ~/.config/bspwm ~/.config/sxhkd ~/.config/alacritty

cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
chmod +x ~/.config/bspwm/bspwmrc
echo "exec bspwm" >> ~/.xinitrc
