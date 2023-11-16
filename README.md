# configs

My current setup

## Requirements
- [git](https://git-scm.com/) (lol)
- [feh](https://github.com/derf/feh)
- [i3-gaps](https://github.com/Airblader/i3)
- [Neovim](https://github.com/neovim/neovim)
  - [Astronvim](https://github.com/AstroNvim/AstroNvim)
- [kitty](https://github.com/kovidgoyal/kitty)
- [picom](https://github.com/yshui/picom)
- [polybar](https://github.com/polybar/polybar)
  - [polybar-themes](https://github.com/adi1090x/polybar-themes)
- [rofi](https://github.com/davatorium/rofi)
- xprop
- [zsh](https://github.com/zsh-users/zsh)
  - [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
    - [powerlevel10k](https://github.com/romkatv/powerlevel10k)

## Before you start

Please note that running `./install.sh` will overwrite exsting configs with symlinks to configs in this repo.

Another thing to bear in mind is the fact that some paths are using "~" (home dir), so please consider running script(-s) for the user you intend.

## Installation

### TL;DR

Install requirements mentioned above, then copy&paste this into your terminal: 
```bash
git clone https://github.com/sultanowskii/dotfiles
cd dotfiles
chmod +x install.sh */install.sh
./install.sh
```

### Step-by-step:

1. Install all the requirements you want
2. Download this repository
3. Get inside
4. Mark all the scripts as executable
5. Run **install.sh** (or script in the corresponding directory, if you want to install something specific)
6. Install optional fancy thingies by following `Optional` sections in `README`s.

## P.S.
yup there are plenty of dotfiles generators, but I don't wanna mess with them.
