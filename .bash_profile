ANDROID_SDK_DIR=/Volumes/Data/Sdk
PATH=$ANDROID_SDK_DIR/platform-tools:$PATH

PATH=${HOME}/dotfiles/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:$PATH

if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

# enable tab completion
complete -cf sudo
complete -cf man

shopt -s cdspell
shopt -s cmdhist

alias ls='ls --group-directories-first --time-style=+"%Y.%m.%d %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%Y.%m.%d %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%Y.%m.%d %H:%M" --color=auto -F'
alias grep='grep --color=tty -d skip'
#alias cp='cp -i'		# confirm before overwriting something
alias df='df -h'		# human-readable sizes
alias free='free -m'		# show sizes in MB
