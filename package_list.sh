#!/usr/bin/env bash

echo "Checking Homebrew"
if ! command -v brew >/dev/null 2>&1; then
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing rmtree..."
brew tap beeftornado/rmtree

echo "Installing zsh tool..."
brew install \
    zsh-completions \
    zsh-autosuggestions \
    zsh-syntax-highlighting \

echo "Installing fvm tool..."
brew tap leoafarias/fvm
brew install fvm

echo "Installing nvm tool..."
brew install nvm

echo "Installing other tools..."
brew install \
    gnu-sed \
    findutils \
    scrcpy \