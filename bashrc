# prompt
export PS1="\n\[$(tput sgr0)\]\[\033[38;5;213m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# colors
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
alias less='less --RAW-CONTROL-CHARS'
alias ls='ls --color=always'

# vim ;)
set -o vi

# pipeline
alias check='/src/check.sh'
