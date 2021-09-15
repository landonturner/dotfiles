#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ${DIR}/vim/colors ${DIR}/vim/{.swp,.backup,.undo}

# Add dotfile links
ln -s ${DIR}/tmux.conf ~/.tmux.conf
ln -s ${DIR}/zshrc ~/.zshrc
ln -s ${DIR}/vim ~/.vim
ln -s ${DIR}/vimrc ~/.vimrc

vim +PlugInstall +qall

ln -s ${DIR}/vim/plugged/vim-colors-solarized/colors/solarized.vim ${DIR}/vim/colors/solarized.vim

echo "Installation of all dotfiles successful"
