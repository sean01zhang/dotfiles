#!/bin/bash

echo "Adding Dotfiles"
ln -s nvim .config/nvim
ln -s tmux .config/tmux

echo "Compiling Programs..."
mkdir -p ~/compiled_programs

cd ~/compiled_programs

# prerequisites
sudo apt-get install ninja-build gettext cmake unzip curl build-essential

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git
cd fzf
git fetch --tags
git checkout tags/0.51.0
sh install
fzf --fish | source
cd ..

# install nvim
git clone --depth 1 https://github.com/neovim/neovim.git
cd neovim
git fetch --tags
git checkout tags/nightly
make CMAKE_BUILD_TYPE=Release
sudo make install
cd ..
