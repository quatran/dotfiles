# alias
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# protection
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# start nvim instead of vi or vim
if [ -f /usr/bin/bash ]; then
    aias vi="nvim"
    alias vim="nvim"
    alias neovim="nvim"
fi

# expand history size
HISTSIZE=100000
HISTFILESIZE=500000

# custom bash prompt
# # tux @ linuxpc /usr/local/src [14:23:52]
# $
export PS1="# \u @ \h \w [\t]\[$(tput sgr0)\]\n$ "

# include work .bashrc if existant
if [ -d $HOME/work ] ; then
    source $HOME/work/.bashrc
fi
