#!/usr/bin/env bash
set -euo pipefail

mkdir -p "$HOME/.config/geany/colorschemes"
mkdir -p "$HOME/.local/share/xfce4/terminal/colorschemes"
mkdir -p "$HOME/.local/share/gtksourceview-4/styles"
mkdir -p "$HOME/.local/share/gtksourceview-3.0/styles"
mkdir -p "$HOME/.config/rofi/themes"

cp qogir.conf "$HOME/.config/geany/colorschemes/qogir.conf"
cp qogir.theme "$HOME/.local/share/xfce4/terminal/colorschemes/qogir.theme"
cp qogir.xml "$HOME/.local/share/gtksourceview-4/styles/qogir.xml"
cp qogir.xml "$HOME/.local/share/gtksourceview-3.0/styles/qogir.xml"
cp qogir.rasi "$HOME/.config/rofi/themes/qogir.rasi"

echo "Installed Qogir companion themes. Restart open apps."
