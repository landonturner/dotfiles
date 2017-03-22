#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir ${DIR}/vim/colors

# VIM installation
ln -s ${DIR}/vim ~/.vim
ln -s ${DIR}/vimrc ~/.vimrc

vim +PlugInstall +qall

ln -s ${DIR}/vim/plugged/vim-colors-solarized/colors/solarized.vim ${DIR}/vim/colors/solarized.vim

# other symlinks
ln -s ${DIR}/bashrc ~/.bashrc
ln -s ${DIR}/tmux.conf ~/.tmux.conf

echo "Installation of all dotfiles successful"
