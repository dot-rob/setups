sudo apt update -y && sudo apt upgrade -y
sudo apt install -y gnome-screenshot gnome-extensions-app gnome-shell-extension-user-theme gnome-tweaks gnome-themes-extra tilix tilix-nautilus remmina putty nmap htop liberation-fonts mozilla-fira-sans-fonts mozilla-fira-mono-fonts
sudo apt remove -y gnome-contacts gnome-calendar simple-scan
sudo apt install -y virt-manager
sudo adduser rob libvirt
sudo adduser rob dialout
echo ""
echo ""
echo "Fedora script complete! Please reboot now."
