#!/bin/bash

set -e
set -x

# remove temp builder files
sudo rm -rf /tmp/content
rm -rf /home/dev/git

# clear package cache
yes | sudo pacman -Scc

# Remove machine-id: see https://github.com/archlinux/arch-boxes/issues/25
sudo rm /etc/machine-id