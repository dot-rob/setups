flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak override --filesystem=/home/rob/.themes/

#all
flatpak install -y flathub org.mozilla.firefox
