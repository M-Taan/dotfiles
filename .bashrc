#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


eval "$(starship init bash)"


# emacs alias
alias emacs='emacs -nw'
alias ll='ls -all'
alias bye='shutdown now'