#!/bin/bash

if [ ! -d "$HOME/.config" ]; then
    mkdir -pv "$HOME/.config"
fi

# Vimrc
ln -sfFh "$PWD/vim/vimrc" "$HOME/.vimrc"

# Git
ln -sfFh "$PWD/git/gitignore" "$HOME/.gitignore"
ln -sfFh "$PWD/git/gitconfig" "$HOME/.gitconfig"

# Ghostty
if [ ! -d "$HOME/.config/ghostty" ]; then
    mkdir -pv "$HOME/.config/ghostty"
fi

ln -sfFh "$PWD/ghostty/config" "$HOME/.config/ghostty/config"

# Psql
ln -sfFh "$PWD/psql/psqlrc" "$HOME/.psqlrc"
mkdir -p "$HOME/.psql/history"

# Nvim
ln -sfFh "$PWD/nvim" "$HOME/.config/nvim"
