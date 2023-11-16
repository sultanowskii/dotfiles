#!/bin/bash

mkdir -p ~/.config/kitty/
ln -sf "`pwd`/kitty.conf" ~/.config/kitty/kitty.conf
ln -sf "`pwd`/colors.conf" ~/.config/kitty/colors.conf
