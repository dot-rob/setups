sudo dnf remove -y gnome-calendar gnome-contacts evince simple-scan
sudo dnf install -y gnome-themes-extra gnome-tweaks celluloid foomatic htop kernel-devel loupe mozilla-fira* nmap openfortivpn putty remmina
echo ""
echo ""
sudo usermod -aG dialout rob
echo ""
echo ""
sleep 3
echo ""
echo ""
echo "Fedora script finished! Please reboot now."
echo ""
echo ""
