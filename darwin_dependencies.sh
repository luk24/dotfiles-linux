#!/usr/bin/env bash

echo "Checking Homebrew"
if ! command -v brew >/dev/null 2>&1; then
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing zsh tool..."
brew install \
    zsh-completions \
    zsh-autosuggestions \
    zsh-syntax-highlighting \

echo "Installing fvm tool..."
brew tap leoafarias/fvm
brew install fvm

# brew cask install \
 
