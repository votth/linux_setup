#!/bin/bash

cp -avr -t . ~/.xinitrc ~/.git* ~/.bashrc ~/.bash_aliases ~/.vimrc ~/.vim/after/ ~/.vim/colors/ ~/.config/alacritty/ ~/.config/awesome/autorun.sh ~/.config/awesome/rc.lua ~/.config/awesome/themes/ ~/.config/lf/ ~/.config/picom/ ~/.config/vimb/config ~/.config/vim/ ~/testPackages

echo '------------------------------------'
mv config .config/vimb/
mv -t .config/awesome/ autorun.sh rc.lua
cp -avr -t .config/awesome/ themes/
cp -avr -t .config/ alacritty/ lf/ picom/ vim/
cp -avr -t .vim/ colors/ after/
rm -rf alacritty lf picom colors after vim themes

pacman -Qq > ./txt/installedPackages.txt
echo '------------------------------------' && git st

# ## Push the update
# git add .
# git commit -m "Autoupdate"
# git push
