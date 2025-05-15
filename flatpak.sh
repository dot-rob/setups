flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak override --filesystem=/home/rob/.themes/

#debian
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.rafaelmardojai.Blanket
flatpak install -y flathub io.github.celluloid_player.Celluloid
flatpak install -y flathub org.gtk.Gtk3theme.Adwaita-dark
flatpak install -y flathub org.gnome.Calculator
flatpak install -y flathub org.gnome.clocks
flatpak install -y flathub org.gnome.Loupe
flatpak install -y flathub org.gnome.Papers
flatpak install -y flathub org.gnome.Weather
flatpak install -y flathub org.mozilla.firefox
