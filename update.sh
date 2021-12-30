#!/bin/bash

cp -avr -t . ~/.bashrc ~/.bash_aliases ~/.vimrc ~/.vim/colors/ ~/testPackages ~/.git* ~/.xinitrc ~/.config/alacritty/ ~/.config/lf/ ~/.config/picom/ ~/.config/vimb/config ~/.config/awesome/autorun.sh ~/.config/awesome/rc.lua ~/.config/vim/ ~/.vim/after/

mv config .config/vimb/
mv -t .config/awesome/ autorun.sh rc.lua
echo '------------------------------------'
cp -avr -t .config/ alacritty/ lf/ picom/ vim/
cp -avr -t .vim/ colors/ after/
rm -rf alacritty lf picom colors after vim

pacman -Qq > installedPackages.txt
echo '------------------------------------' && git st

### Push the update
#git add .
#git commit -m "Autoupdate"
#
#git push
