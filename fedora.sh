sudo dnf remove -y gnome-calendar gnome-contacts simple-scan
sudo dnf install -y gnome-themes-extra gnome-tweaks htop kernel-devel nmap openfortivpn putty remmina
echo ""
echo ""
sudo usermod -aG dialout rob
echo ""
echo ""
sleep 3
echo "Fedora script finished! Please reboot now."
echo ""
echo ""
