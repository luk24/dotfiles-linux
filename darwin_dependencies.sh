#!/usr/bin/env bash

echo "Checking Homebrew"
if ! command -v brew >/dev/null 2>&1; then
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing tools..."
brew install \
    zsh-completions \
    zsh-autosuggestions \
    zsh-syntax-highlighting \

# brew cask install \
 
