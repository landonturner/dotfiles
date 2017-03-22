#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create symlinks
ln -s ${DIR}/vim ~/.vim
ln -s ${DIR}/vimrc ~/.vimrc
ln -s ${DIR}/bashrc ~/.bashrc
ln -s ${DIR}/tmux.conf ~/.tmux.conf

echo "Installation of all dotfiles successful"
