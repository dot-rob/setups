sudo dnf remove -y gnome-calendar gnome-contacts simple-scan
sudo dnf install -y gnome-extensions-app gnome-themes-extra gnome-tweaks mozilla-fira* htop putty nmap remmina tilix
sudo dnf install -y @virtualization
sudo usermod -aG libvirt rob
sudo usermod -aG dialout rob
echo ""
echo ""
echo "Fedora script finished! Please reboot now."
echo ""
echo ""
