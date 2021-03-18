#!/bin/sh
cd ~/dotfiles
yes 'n' | mv ./.* ..
cd ..
sh bin/brew-manifest.sh
git submodule update --init --recursive
vim +PluginInstall +qall
sh bin/ycm-install.sh
exit
