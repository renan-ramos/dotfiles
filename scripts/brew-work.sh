#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU stow
brew install stow

# Install tmux
brew install tmux

# Install github cli
brew install gh

# Install aws cli
brew install awscli

# Language packages
brew install nvm
mkdir ~/.nvm
brew install go

# casks
brew install --cask spotify

brew tap dracula/install
brew install --cask dracula-terminal
brew install --cask google-chrome
brew install --cask visual-studio-code

# fonts
brew tap homebrew/cask-fonts
brew install --cask font-fira-code