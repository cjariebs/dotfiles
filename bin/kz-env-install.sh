#!/bin/sh
cd ~/dotfiles
yes 'n' | mv ./.* ..
cd ..
git submodule update --init --recursive
exit
