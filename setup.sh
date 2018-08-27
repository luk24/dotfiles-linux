#!/usr/bin/env bash
set -e

ask() {
  # http://djm.me/ask
  while true; do

    if [ "${2:-}" = "Y" ]; then
      prompt="Y/n"
      default=Y
    elif [ "${2:-}" = "N" ]; then
      prompt="y/N"
      default=N
    else
      prompt="y/n"
      default=
    fi

    # Ask the question
    read -p "$1 [$prompt] " REPLY

    # Default?
    if [ -z "$REPLY" ]; then
       REPLY=$default
    fi

    # Check if the reply is valid
    case "$REPLY" in
      Y*|y*) return 0 ;;
      N*|n*) return 1 ;;
    esac

  done
}

dir=$(pwd)
system=$(uname -s)

if [ system = "Linux" ]; then
   ask "Install packages?" Y && bash ./dependencies.sh
else
   ask "Install packages?" Y && bash ./darwin_dependencies.sh
fi

echo "Link some config"
ask "Install symlink for .gitconfig?" Y && ln -sfn ${dir}/.gitconfig ${HOME}/.gitconfig
ask "Install symlink for .bash_profile" Y && ln -sfn ${dir}/.bash_profile ${HOME}/.bash_profile
