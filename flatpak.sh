flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#all
#flatpak install -y flathub com.bitwarden.desktop
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub org.libreoffice.LibreOffice
flatpak install -y flathub org.mozilla.firefox

##########################################

#kde
#flatpak install -y flathub org.kde.isoimagewriter
#flatpak install -y flathub org.kde.kate
#flatpak install -y flathub org.kde.kcalc
#flatpak install -y flathub org.kde.kclock
#flatpak install -y flathub org.videolan.VLC

##########################################

#gnome
flatpak install -y flathub com.rafaelmardojai.Blanket
flatpak install -y flathub com.spotify.Client
flatpak install -y flathub io.github.celluloid_player.Celluloid
#flatpak install -y flathub io.gitlab.news_flash.NewsFlash
flatpak install -y flathub org.gnome.Calculator
flatpak install -y flathub org.gnome.clocks
flatpak install -y flathub org.gnome.Loupe
flatpak install -y flathub org.gnome.Papers
flatpak install -y flathub org.gnome.TextEditor
flatpak install -y flathub org.gnome.Weather
flatpak install -y flathub org.gtk.Gtk3theme.Adwaita-dark
sudo flatpak override --env=GTK_THEME=Adwaita-dark
