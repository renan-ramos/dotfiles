#!/bin/sh

# Removes .zshrc from $HOME (if it exists) and copy the .zshrc file from the .dotfiles
cp -r .oh-my-zsh $HOME/.oh-my-zsh

rm $HOME/.zshrc
cp .zshrc $HOME/.zshrc

source $HOME/.zshrc