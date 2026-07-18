# Tilix Theme Pack Update

Adds Tilix color-scheme support to the custom **Nord** and **Qogir Dark** theme packs.

## Included Files

- `nord/tilix/nord-custom.json`
- `qogir/tilix/qogir-dark-custom.json`
- `install-tilix-themes.sh`

## Installation

Run:

```bash
chmod +x install-tilix-themes.sh
./install-tilix-themes.sh
```

The schemes install to:

```text
~/.config/tilix/schemes/
```

Then open Tilix and select the desired scheme under:

```text
Preferences > Profiles > Colors > Color scheme
```

Restart Tilix if the schemes do not appear immediately.

## Manual Installation

```bash
mkdir -p ~/.config/tilix/schemes
cp nord/tilix/nord-custom.json ~/.config/tilix/schemes/
cp qogir/tilix/qogir-dark-custom.json ~/.config/tilix/schemes/
```
