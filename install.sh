#!/bin/bash

DOTFILES="$HOME/.dotfiles"

# Zsh
ln -sf "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"

mkdir -p ~/.config

# Vim
ln -sf "$DOTFILES/vim/.vimrc" "$HOME/.vimrc"

# Neovim
mkdir -p ~/.config
ln -sf "$DOTFILES/nvim" "$HOME/.config/nvim"

# Tmux
ln -sf "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"


