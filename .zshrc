export PATH=/anaconda2/bin:$HOME/.local/bin:$PATH

export ZSH=/Users/sid/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git brew)

source $ZSH/oh-my-zsh.sh

eval "$(rbenv init -)"
fpath=(/usr/local/share/zsh-completions $fpath)
alias org="emacs ~/Dropbox/index.org"
em() {
    emacsclient -c "$1" &
}

# OPAM configuration
. /Users/sid/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
