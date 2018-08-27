#!/usr/bin/env bash

echo "Checking Homebrew"
if ! command -v brew >/dev/null 2>&1; then
   #https://brew.sh
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing tools..."
brew install \
    bash \
    bash_completion \
    git \
    vim \
    proxychains-ng \
    gnupg \
    coreutils \
    lzip
