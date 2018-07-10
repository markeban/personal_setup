#!/bin/sh

set -e

#install homebrew and bundle
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle
brew bundle check

# load iterm config
sudo defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/personal_setup"
sudo defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
sudo defaults read com.googlecode.iterm2.plist

#load os defaults
source ./os_defaults.sh

# symlink for bash_profile
ln -s ~/personal_setup/.bash_profile ~/

# load spectacle config file
sudo cp -Rf ./spectacle_settings.json > ~/Library/Application\ Support/Spectacle/Shortcuts.json

#install sublime text
sudo cp -Rf ./sublime_settings/ ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash