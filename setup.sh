#!/bin/bash
cp .vimrc ~/
cp -r .vim ~/
vim +PlugInstall +qall
cd ~/.vim/bundle/YouCompleteMe/
#git submodule update --init --recursive
chmod +x install.sh
./install.sh

