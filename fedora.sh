sudo dnf update -y && sudo dnf upgrade -y
sudo dnf install -y gnome-screenshot gnome-extensions-app gnome-shell-extension-user-theme gnome-tweaks tilix tilix-nautilus remmina putty nmap htop liberation-fonts mozilla-fira-sans-fonts mozilla-fira-mono-fonts
sudo dnf remove -y gnome-contacts gnome-calendar simple-scan
sudo dnf install -y @virtualization
sudo usermod -aG libvirt rob
sudo usermod -aG dialout rob
mkdir .icons
echo "Fedora script complete! Please reboot now."


