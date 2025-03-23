flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak override --filesystem=xdg-config/gtk-3.0

flatpak install -y flathub com.bitwarden.desktop
flatpak install -y flathub com.spotify.Client
flatpak install -y flathub org.angryip.ipscan
flatpak install -y flathub org.gtk.Gtk3theme.Adwaita-dark
flatpak install -y flathub org.kde.isoimagewriter
flatpak install -y flathub org.kde.kalk
flatpak install -y flathub org.kde.kclock
flatpak install -y flathub org.videolan.VLC
flatpak install -y flathub org.mozilla.firefox
