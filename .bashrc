#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


eval "$(starship init bash)"


alias ll='ls -all'
alias emacst='emacsclient -c -nw'
alias emacs='emacsclient -c -a "emacs"'
alias bye='shutdown now'
alias arcdiff='EDITOR="emacsclient -c -nw" arc diff'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=~/.local/bin:$PATH
