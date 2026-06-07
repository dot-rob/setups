#!/usr/bin/env bash
set -euo pipefail

mkdir -p "$HOME/.config/geany/colorschemes"
mkdir -p "$HOME/.local/share/xfce4/terminal/colorschemes"
mkdir -p "$HOME/.local/share/gtksourceview-4/styles"
mkdir -p "$HOME/.local/share/gtksourceview-3.0/styles"
mkdir -p "$HOME/.config/rofi/themes"

cp nord.conf "$HOME/.config/geany/colorschemes/nord.conf"
cp nord.theme "$HOME/.local/share/xfce4/terminal/colorschemes/nord.theme"
cp nord.xml "$HOME/.local/share/gtksourceview-4/styles/nord.xml"
cp nord.xml "$HOME/.local/share/gtksourceview-3.0/styles/nord.xml"
cp nord.rasi "$HOME/.config/rofi/themes/nord.rasi"

echo "Installed Nord companion themes. Restart open apps if the schemes do not appear immediately."
