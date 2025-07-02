#!/bin/bash

echo "Adding Dotfiles"
mkdir -p ~/.config
ln -s "$(pwd)/nvim" ~/.config/nvim
ln -s "$(pwd)/tmux" ~/.config/tmux
