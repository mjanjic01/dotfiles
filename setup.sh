#!/bin/bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install system dependencies
brew bundle

# Setup utilities
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo puma-dev -setup -d localhost
puma-dev -install

# Move configuration files
cp files/.gitignore_global ~/.gitignore_global
cp files/.gitconfig ~/.gitconfig
cp files/.zshrc ~/.zshrc
cp files/.npmrc ~/.npmrc
cp files/.vimrc ~/.vimrc
cp files/mjanjic.zsh-theme ~/.oh-my-zsh/themes/
cp files/kitty.conf ~/.config/kitty/kitty.conf
cp files/gpg-agent.conf ~/.gnpg/gpg-agent.conf
cp files/my.cnf etc/my.cnf
