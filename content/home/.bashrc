# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='LC_COLLATE=C ls --color=auto -ghF'
alias ll='ls -AG'

PS1='[\u@\h \W]\$ '

# set up aliases
. ~/.bash_aliases

