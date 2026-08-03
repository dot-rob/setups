#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$HOME/.config/geany/colorschemes"
mkdir -p "$HOME/.local/share/xfce4/terminal/colorschemes"
mkdir -p "$HOME/.local/share/gtksourceview-4/styles"
mkdir -p "$HOME/.local/share/gtksourceview-3.0/styles"
mkdir -p "$HOME/.config/rofi/themes"
mkdir -p "$HOME/.config/tilix/schemes"

install -m 0644 "$SCRIPT_DIR/nord.conf" "$HOME/.config/geany/colorschemes/nord.conf"
install -m 0644 "$SCRIPT_DIR/nord.theme" "$HOME/.local/share/xfce4/terminal/colorschemes/nord.theme"
install -m 0644 "$SCRIPT_DIR/nord.xml" "$HOME/.local/share/gtksourceview-4/styles/nord.xml"
install -m 0644 "$SCRIPT_DIR/nord.xml" "$HOME/.local/share/gtksourceview-3.0/styles/nord.xml"
install -m 0644 "$SCRIPT_DIR/nord.rasi" "$HOME/.config/rofi/themes/nord.rasi"
install -m 0644 "$SCRIPT_DIR/nord.json" "$HOME/.config/tilix/schemes/nord.json"

echo "Installed Nord companion themes. Restart open applications if needed."
