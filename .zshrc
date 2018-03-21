export ZSH=/Users/sid/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git brew)

source $ZSH/oh-my-zsh.sh

eval "$(rbenv init -)"
eval $(thefuck --alias)

fpath=(/usr/local/share/zsh-completions $fpath)

alias org="emacs ~/Dropbox/index.org"
alias be="bundle exec"

em() {
    emacsclient -c "$1" &
}

set -o vi
bindkey '^R' history-incremental-pattern-search-backward

# OPAM configuration
. /Users/sid/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
