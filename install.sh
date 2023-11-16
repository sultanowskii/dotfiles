#!/bin/bash

(cd ./i3wm && ./install.sh)
(cd ./kitty && ./install.sh)
(cd ./neovim && ./install.sh)
(cd ./other && ./install.sh)
(cd ./picom && ./install.sh)
(cd ./rofi && ./install.sh)

echo "[*] Installed successfully!"
