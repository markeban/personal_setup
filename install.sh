#!/bin/sh

# load iterm config
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/personal_setup"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# create bash_profile and load config
if [! -f ~/.bash_profile ]; then
  touch ~/.bash_profile
fi
cat ./dot_files/bash_profile >> ~/.bash_profile

# install spectacle and load config
ruby -e "$(curl -fsSL "https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install spectacle
sudo cat ./spectacle_settings.json > ~/Library/Application Support/Spectacle/Shortcuts.json

#install sublime text
source install_sublime_text.sh
