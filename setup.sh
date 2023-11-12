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

echo "Install applications"
ask "Install packages?" Y && bash ./package_list.sh
ask "Install oh my zsh?" Y && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Configurate links"
ask "Configuate zshrc?" Y && echo -e "\nsource ${HOME}/dotfiles/.devrc" >> ${HOME}/.zshrc
ask "Configuate gitconfig?" Y && ln -sfn ${dir}/.gitconfig ${HOME}/.gitconfig