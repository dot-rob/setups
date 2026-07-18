#!/usr/bin/env bash
# Run from: the extracted qogir-theme-pack directory
# Installs Tilix scheme to: ~/.config/tilix/schemes/qogir.json

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$HOME/.config/geany/colorschemes"
mkdir -p "$HOME/.local/share/xfce4/terminal/colorschemes"
mkdir -p "$HOME/.local/share/gtksourceview-4/styles"
mkdir -p "$HOME/.local/share/gtksourceview-3.0/styles"
mkdir -p "$HOME/.config/rofi/themes"
mkdir -p "$HOME/.config/tilix/schemes"

install -m 0644 "$SCRIPT_DIR/qogir.conf" "$HOME/.config/geany/colorschemes/qogir.conf"
install -m 0644 "$SCRIPT_DIR/qogir.theme" "$HOME/.local/share/xfce4/terminal/colorschemes/qogir.theme"
install -m 0644 "$SCRIPT_DIR/qogir.xml" "$HOME/.local/share/gtksourceview-4/styles/qogir.xml"
install -m 0644 "$SCRIPT_DIR/qogir.xml" "$HOME/.local/share/gtksourceview-3.0/styles/qogir.xml"
install -m 0644 "$SCRIPT_DIR/qogir.rasi" "$HOME/.config/rofi/themes/qogir.rasi"
install -m 0644 "$SCRIPT_DIR/qogir.json" "$HOME/.config/tilix/schemes/qogir.json"

echo "Installed Qogir companion themes. Restart open applications if needed."
