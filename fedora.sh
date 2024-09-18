sudo dnf update -y && sudo dnf upgrade -y
sudo dnf install -y gnome-tweaks gnome-themes-extra tilix tilix-nautilus remmina putty nmap htop liberation-fonts-all mozilla-fira-sans-fonts mozilla-fira-mono-fonts
sudo dnf remove -y gnome-contacts gnome-calendar simple-scan
sudo dnf install -y @virtualization
sudo usermod -aG libvirt rob
sudo usermod -aG dialout rob
echo ""
echo ""
echo "Fedora script complete! Please reboot now."


