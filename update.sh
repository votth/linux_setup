#!/bin/bash

cp -avr -t . ~/.bashrc ~/.vimrc ~/.vim/colors/ ~/testPackages ~/.git* ~/.xinitrc ~/.config/alacritty/ ~/.config/lf/ ~/.config/picom/ ~/.config/vimb/config ~/.config/awesome/autorun.sh ~/.config/awesome/rc.lua

mv config .config/vimb/
mv -t .config/awesome/ autorun.sh rc.lua
cp -avr -t .config/ alacritty/ lf/ picom/
cp -avr colors/ .config/vim/
rm -rf alacritty lf picom colors

pacman -Qq > installedPackages.txt

### Push the update
git add .
git commit -m "Autoupdate"

git push
