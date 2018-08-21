#!/bin/bash

source ~/.bashrc

eval "$(rbenv init -)"
eval "$(nodenv init -)"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export EDITOR='subl -w'

source ~/.git-completion.bash

alias ls='ls -GFh'

# Git branch bash completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
  
  # Add git completion to aliases
  __git_complete gc _git_checkout
  __git_complete gp _git_pull
fi

alias be='clear && bundle exec'
alias gs='git status'
alias gc='git checkout'
alias gp='git pull'
alias gb='git branch'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[36m\]\w\[\033[0m\]\e[1;33m\$(parse_git_branch)\[\033[00m\] $ "

# Rubocop
alias rc='bundle exec rubocop $PWD'

kill_all_rails() {
  ps aux | pgrep rails | xargs sudo kill -9
}
export -f kill_all_rails

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Go Lang
export GOPATH=$HOME/go