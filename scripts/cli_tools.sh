#!/bin/bash

set -e
set -x

# Basic tooling
sudo pacman -S --noconfirm vim git wget ranger

# Install trizen (AUR helper)
mkdir -p /home/dev/git && cd $_
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg --noconfirm -si

# install terminal toys
trizen -S --noconfirm asciiquarium fortune-mod lolcat cowsay asciiquarium tty-clock cmatrix neofetch htop