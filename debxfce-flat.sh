flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak override --filesystem=xdg-config/gtk-3.0

flatpak install -y flathub com.spotify.Client
flatpak install -y flathub org.gtk.Gtk3theme.Adwaita-dark
flatpak install -y flathub org.mozilla.firefox

flatpak install -y flathub org.remmina.Remmina

flatpak install -y flathub org.xfce.mousepad
flatpak install -y flathub org.xfce.ristretto

flatpak install -y flathub uk.org.greenend.chiark.sgtatham.putty

