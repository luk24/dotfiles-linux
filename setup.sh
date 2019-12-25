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

echo "Install oh my zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Configurate Dracula theme"
git clone https://github.com/dracula/zsh.git ${dir}/dracula/zsh
git clone https://github.com/dracula/iterm.git ${dir}/dracula/iterm



echo "Link some config"
ln -sfn ${dir}/.gitconfig ${HOME}/.gitconfig
ln -sfn ${dir}/.bashrc${HOME}/.bashrc
ln -sfn ${dir}/.zshrc ${HOME}/.zshrc
ln -sfn ${dir}/dracula/zsh/dracula.zsh-theme ${HOME}/.oh-my-zsh/themes/dracula.zsh-theme
ln -sfn ${dir}/config/Rime ${HOME}/Library/Rime


