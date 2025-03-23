flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak override --filesystem=xdg-config/gtk-3.0

flatpak install -y flathub com.bitwarden.desktop
#flatpak install -y flathub com.google.Chrome
flatpak install -y flathub org.angryip.ipscan
flatpak install -y flathub org.kde.gwenview
flatpak install -y flathub org.kde.isoimagewriter
flatpak install -y flathub org.kde.kalk
flatpak install -y flathub org.kde.kate
flatpak install -y flathub org.kde.kclock
#flatpak install -y flathub org.kde.kfind
#flatpak install -y flathub org.kde.kweather
flatpak install -y flathub org.kde.kwrite
flatpak install -y flathub org.kde.okular
flatpak install -y flathub org.videolan.VLC
flatpak install -y flathub org.mozilla.firefox
flatpak install -y flathub org.remmina.Remmina
flatpak install -y flathub uk.org.greenend.chiark.sgtatham.putty
