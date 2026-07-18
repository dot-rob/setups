#!/usr/bin/env bash
# Install from: this extracted update bundle
# Installs to: ~/.config/tilix/schemes/

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
DEST="${HOME}/.config/tilix/schemes"

mkdir -p "$DEST"
install -m 0644 "$SCRIPT_DIR/nord/tilix/nord-custom.json" "$DEST/nord-custom.json"
install -m 0644 "$SCRIPT_DIR/qogir/tilix/qogir-dark-custom.json" "$DEST/qogir-dark-custom.json"

printf 'Installed Tilix schemes to %s\n' "$DEST"
printf 'In Tilix: Preferences > Profiles > Colors > Color scheme.\n'
