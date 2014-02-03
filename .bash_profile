export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:/usr/local/bin:$PATH"
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

alias be="bundle exec"
alias gpom="git push origin master"
alias dev="cd ~/Development"
alias gphm="git push heroku master"
alias glog="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
