export ZSH=/Users/sid/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git brew)

source $ZSH/oh-my-zsh.sh

eval "$(rbenv init -)"
eval $(thefuck --alias)

fpath=(/usr/local/share/zsh-completions $fpath)

alias org="emacs ~/Dropbox/index.org"
alias be="bundle exec"
alias vg="EDITOR=vim g"
kem(){
	kill -3 $(ps aux | grep emacs | awk '{print $2}') > /dev/null 2>&1
}

em() {
	emacsclient -c "$1" &
}

alias dotfiles="ls -dp .?* | grep -v '/$'"
set -o vi
bindkey '^R' history-incremental-pattern-search-backward

# OPAM configuration
. /Users/sid/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
