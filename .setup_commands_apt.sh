#!/bin/sh

apt install vim tmux docker python3 python3-pip
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .* ~/
cp plugins.vim ~/.vim/plugins.vim

