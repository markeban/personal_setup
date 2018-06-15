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

# create bash_profile and load config
if [! -f ~/.bash_profile ]; then
  touch ~/.bash_profile
fi
cat ./dot_files/bash_profile >> ~/.bash_profile

# load spectacle config file
sudo cp -Rf ./spectacle_settings.json > ~/Library/Application Support/Spectacle/Shortcuts.json

#install sublime text
sudo cp -Rf ./sublime_settings/ ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
