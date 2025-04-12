flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak override --filesystem=xdg-config/gtk-3.0

flatpak install -y flathub com.rafaelmardojai.Blanket
flatpak install -y flathub io.github.celluloid_player.Celluloid
flatpak install -y flathub org.gnome.Calculator
flatpak install -y flathub org.gnome.Loupe
flatpak install -y flathub org.gnome.Papers
flatpak install -y flathub org.gtk.Gtk3theme.Adwaita-dark
flatpak install -y flathub org.mozilla.firefox
flatpak install -y flathub org.gnome.clocks
flatpak install -y flathub org.gnome.TextEditor
