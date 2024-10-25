sudo dnf install -y 
sudo dnf remove gnome-calendar gnome-contacts simple-scan 
sudo dnf install gnome-extensions-app gnome-themes-extra gnome-tweaks mozilla-fira* tilix remmina putty iproute2 nmap htop
sudo dnf install -y @virtualization
sudo usermod -aG libvirt rob
sudo usermod -aG dialout rob
echo ""
echo ""
echo "Fedora script finished! Please reboot now."
echo ""
echo ""
