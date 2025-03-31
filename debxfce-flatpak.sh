flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak override --filesystem=xdg-config/gtk-3.0

flatpak install -y flathub org.gtk.Gtk3theme.Adwaita-dark
flatpak install -y flathub org.mozilla.firefox
