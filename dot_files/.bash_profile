#!/bin/bash

source ~/.bashrc

eval "$(rbenv init -)"
eval "$(nodenv init -)"

# Rubocop
# alias rc='bundle exec rubocop $PWD'

# kill_all_rails() {
#   ps aux | pgrep rails | xargs sudo kill -9
# }
# export -f kill_all_rails

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Go Lang
# export GOPATH=$HOME/go
# export PATH=$PATH:$GOPATH/bin