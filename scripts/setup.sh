#!/bin/bash

if [ ! -d "$HOME/.config" ]; then
    mkdir -pv "$HOME/.config"
fi

# Vimrc
ln -sfFh "$PWD/vim/vimrc" "$HOME/.vimrc"

# Git
ln -sfFh "$PWD/git/gitignore" "$HOME/.gitignore"
ln -sfFh "$PWD/git/gitconfig" "$HOME/.gitconfig"
