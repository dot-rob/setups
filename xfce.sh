sudo apt install -y linux-headers-$(uname -r) xfce4 lightdm-gtk-greeter-settings xfce4-battery-plugin xfce4-netload-plugin xfce4-power-manager xfce4-screenshooter xfce4-taskmanager atril bash-completion build-essential cups fonts-liberation2 foomatic-db geany gigolo gvfs gvfs-backends htop mousepad network-manager-gnome nmap openfortivpn parole pipewire pipewire-pulse pipewire-audio putty qalculate-gtk remmina ristretto rofi system-config-printer thunar-archive-plugin tilix tlp tlp-rdw wget wireplumber unzip zip
echo ""
echo ""
sudo install -d -m 0755 /etc/apt/keyrings
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
#The fingerprint should be 35BAA0B33E9EB396F59CA838C0BA5CE6DC6315A3. You may check it with the following command:
gpg -n -q --import --import-options import-show /etc/apt/keyrings/packages.mozilla.org.asc | awk '/pub/{getline; gsub(/^ +| +$/,""); if($0 == "35BAA0B33E9EB396F59CA838C0BA5CE6DC6315A3") print "\nThe key fingerprint matches ("$0").\n"; else print "\nVerification failed: the fingerprint ("$0") does not match the expected one.\n"}'
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null
echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla
sudo apt update && sudo apt install firefox
echo ""
echo ""
sudo adduser rob dialout
echo ""
echo ""
sleep 3
echo "Debian XFCE script finished! Please reboot now."
echo ""
echo ""
