export ZSH=/Users/sid/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git brew)

source $ZSH/oh-my-zsh.sh

fpath=(/usr/local/share/zsh-completions $fpath)

alias org="emacs ~/Dropbox/index.org"
alias be="bundle exec"
alias vg="EDITOR=vim g"
kem(){
	kill -3 $(ps aux | grep emacs | grep Cellar | awk '{print $2}') > /dev/null 2>&1
}

em() {
	emacsclient -c "$1" &
}

alias dotfiles="ls -dp .?* | grep -v '/$'"
set -o vi
bindkey '^R' history-incremental-pattern-search-backward

# OPAM configuration
. /Users/sid/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

HISTSIZE=1000
SAVEHIST=10000
setopt HIST_SAVE_NO_DUPS INC_APPEND_HISTORY
HISTFILE=~/.zsh/dirhist/${PWD//\//@}
chpwd() {
  [[ $PWD = $OLDPWD ]] || fc -Pp ~/.zsh/dirhist/${PWD//\//@}
}

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
