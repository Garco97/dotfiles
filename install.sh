#!/bin/bash

DOTFILES="$HOME/.dotfiles"

# Zsh
ln -sf "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"

# Bash
ln -sf "$DOTFILES/bash/.bashrc" "$HOME/.bashrc"

# Starship
mkdir -p ~/.config
ln -sf "$DOTFILES/starship/starship.toml" "$HOME/.config/starship.toml"

# Vim
ln -sf "$DOTFILES/vim/.vimrc" "$HOME/.vimrc"

# Neovim
mkdir -p ~/.config
ln -sf "$DOTFILES/nvim" "$HOME/.config/nvim"

# Tmux
ln -sf "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"

ln -sf "$DOTFILES/terminator/config" "$HOME/.config/terminator/config"

