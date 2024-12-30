#!/bin/bash

if [ ! -d "$HOME/.config" ]; then
    mkdir -pv "$HOME/.config"
fi

# Vimrc
ln -sfFh "$PWD/vim/vimrc" "$HOME/.vimrc"
