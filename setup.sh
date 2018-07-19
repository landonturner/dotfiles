#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ${DIR}/vim/colors ${DIR}/vim/{.swp,.backup,.undo}

# VIM installation
ln -s ${DIR}/vim ~/.vim
ln -s ${DIR}/vimrc ~/.vimrc

vim +PlugInstall +qall

ln -s ${DIR}/vim/plugged/vim-colors-solarized/colors/solarized.vim ${DIR}/vim/colors/solarized.vim

# other symlinks
ln -s ${DIR}/bashrc ~/.bashrc
ln -s ${DIR}/tmux.conf ~/.tmux.conf

echo "Installation of all dotfiles successful"
