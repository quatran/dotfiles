# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Ruby gems that are installed with
# gem --user-install
if [ -d $HOME/.gem ] ; then
    export PATH=$HOME/.gem/ruby/2.5.0/bin:$PATH
    export GEM_HOME=$HOME/.gem/ruby/2.5.0/
    export GEM_PATH=$HOME/.gem/ruby/2.5.0/
fi

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# zsh plugins
plugins=(
  git
  asdf
  zsh-autocomplete
)

source $ZSH/oh-my-zsh.sh

# User configuration

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

# include work bashrc if existant
if [ -d $HOME/work ] ; then
    source $HOME/work/.bashrc
fi

# start nvim instead of vi or vim
if [ -f /usr/bin/nvim ]; then
    alias vi="nvim"
    alias vim="nvim"
    alias neovim="nvim"
fi

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Save every command before it is executed
 setopt inc_append_history

zstyle ':autocomplete:*' min-input 3

# cd and ls into a folder
cdls() {
    cd "$@" && ls;
}
