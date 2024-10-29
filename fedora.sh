sudo dnf remove -y gnome-calendar gnome-contacts simple-scan
sudo dnf install -y gnome-extensions-app gnome-themes-extra gnome-tweaks remmina putty mozilla-fira* htop nmap tilix openfortivpn
sudo dnf install -y @virtualization
sudo usermod -aG libvirt rob
sudo usermod -aG dialout rob
echo ""
echo ""
echo "Fedora script finished! Please reboot now."
echo ""
echo ""
