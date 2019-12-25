source ${HOME}/.env

shopt -s cdspell
shopt -s cmdhist

alias ls='ls --group-directories-first --time-style=+"%Y.%m.%d %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%Y.%m.%d %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%Y.%m.%d %H:%M" --color=auto -F'
alias grep='grep --color=tty -d skip'
#alias cp='cp -i'		# confirm before overwriting something
alias df='df -h'		# human-readable sizes
alias free='free -m'		# show sizes in MB
