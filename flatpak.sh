flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak override --filesystem=/home/rob/.themes/

#all
flatpak install -y flathub org.mozilla.firefox

#gnome
flatpak install -y flathub com.rafaelmardojai.Blanket
flatpak install -y flathub io.github.celluloid_player.Celluloid
flatpak install -y flathub org.gtk.Gtk3theme.Adwaita-dark
flatpak install -y flathub org.gnome.Calculator
flatpak install -y flathub org.gnome.clocks
flatpak install -y flathub org.gnome.Loupe
flatpak install -y flathub org.gnome.Papers
flatpak install -y flathub org.gnome.TextEditor
flatpak install -y flathub org.gnome.Weather
#kde
#flatpak install -y flathub org.kde.gwenview
#flatpak install -y flathub org.kde.isoimagewriter
#flatpak install -y flathub org.kde.kate
#flatpak install -y flathub org.kde.kcalc
#flatpak install -y flathub org.kde.kclock
#flatpak install -y flathub org.kde.kfind
#flatpak install -y flathub org.kde.kweather
#flatpak install -y flathub org.kde.kwrite
#flatpak install -y flathub org.kde.okular
#flatpak install -y flathub org.videolan.VLC
