#!/bin/sh

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles YES

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Prompt for what type of machine this will used for (work or personal), then run the appropriate script
echo "What type of machine is this? (work or personal)"
read machineType
if [ $machineType = "work" ]
then
  source ./scripts/brew-work.sh
elif [ $machineType = "personal" ]
then
  source ./scripts/brew-personal.sh
else
  echo "Invalid machine type"
fi

# Starts stow in the current directory
stow .