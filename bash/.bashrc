# asdf
# https://asdf-vm.com/guide/getting-started.html#_3-install-asdf
if [ -d $HOME/.asdf ] ; then
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
fi

# Ruby gems that are installed with
# gem --user-install
if [ -d $HOME/.gem ] ; then
    export PATH=$HOME/.gem/ruby/2.5.0/bin:$PATH
    export GEM_HOME=$HOME/.gem/ruby/2.5.0/
    export GEM_PATH=$HOME/.gem/ruby/2.5.0/
fi

# alias
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias xo=xdg-open
# protection
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# start nvim instead of vi or vim
if [ -f /usr/bin/nvim ]; then
    alias vi="nvim"
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

# cd and ls into a folder
cdls() {
    cd "$@" && ls;
}

# open folder with current instance of code
cr() {
    code "$@" --reuse-window;
}
