#!/bin/sh

# Removes .zshrc from $HOME (if it exists) and copy the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
cp .zshrc $HOME/.zshrc

source $HOME/.zshrc