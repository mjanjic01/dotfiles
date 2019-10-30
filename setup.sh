#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew bundle
brew cask install $(cat files/Casklist)

cp files/.gitignore_global ~/.gitignore_global
cp files/.gitconfig ~/.gitconfig

cp files/.zshrc ~/.zshrc

cp files/.npmrc ~/.npmrc

cp files/mjanjic.zsh-theme ~/.oh-my-zsh/themes/

cp files/kitty.conf ~/.config/kitty/kitty.conf

cp files/my.cnf /usr/local/etc/my.cnf

cp -R files/ranger/ ~/.config/ranger/
