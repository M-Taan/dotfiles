#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


eval "$(starship init bash)"


alias ll='ls -all'
alias emacst='emacs -nw'
alias bye='shutdown now'
