#!/usr/bin/env bash

echo "Checking Homebrew"
if ! command -v brew >/dev/null 2>&1; then
   #https://brew.sh
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing tools..."
brew install \
    git \
    vim \
    proxychains-ng \
