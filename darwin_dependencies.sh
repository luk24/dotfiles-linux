#!/usr/bin/env bash

echo "Checking Homebrew"
if ! command -v brew >/dev/null 2>&1; then
   #https://brew.sh
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing tools..."
brew install \
    bash \
    zsh \
    ccache \
    dateutils \
    gnupg2 \
    coreutils \

brew cask install \
    squirrel \

#echo "Installing flock"
#brew tap discoteq/discoteq && brew install flock

#echo "Something"
#ln -s /usr/local/bin/lzip /usr/local/bin/lunzip

echo "Copy preset apps"
cp -rf app/NativeDisplayBrightness.app/ ~/Applications/