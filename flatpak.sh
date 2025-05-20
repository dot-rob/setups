flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#debian
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.rafaelmardojai.Blanket
flatpak install -y flathub io.github.celluloid_player.Celluloid
flatpak install -y flathub org.gnome.Calculator
flatpak install -y flathub org.gnome.Weather
flatpak install -y flathub org.mozilla.firefox

flatpak install -y flathub org.gtk.Gtk3theme.Adwaita-dark
sudo flatpak override --env=GTK_THEME=Adwaita-dark
sudo flatpak override --filesystem=/home/rob/.themes/
