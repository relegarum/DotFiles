#!/bin/sh

apt install vim tmux docker python3 python3-pip xclip
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .* ~/
cp plugins.vim ~/.vim/plugins.vim
cd ~/repo
git clone https://github.com/b-ryan/powerline-shell.git

./add_aliases.sh
