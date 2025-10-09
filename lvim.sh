#!/bin/bash


### build neovim from repo

sudo apt install -y build-essential cmake gettext
git clone https://github.com/neovim/neovim
pushd neovim
make -j8 CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

### these packages needed for LSP support w/ plugin 

sudo apt install -y npm python3-venv ripgrep fzf

### Install LazyVim as an isolated app/installation called lvim

git clone https://github.com/LazyVim/starter ~/.config/lvim
### put this in your shell profile
### you need neovim 0.9.newish for the NVIM_APPNAME param to work..
alias lvim="NVIM_APPNAME=lvim nvim" 

echo you might want to install lazygit https://github.com/jesseduffield/lazygit#installation
