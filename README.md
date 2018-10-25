## Installation

### clone repo
`cd && git clone https://github.com/markeban/personal_setup.git && cd personal_setup/`

### install homebrew and bundle
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle
brew bundle check
```

### load iterm config
```
sudo defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/personal_setup"
sudo defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
sudo defaults read com.googlecode.iterm2.plist
```

### load os defaults
`source ./os_defaults.sh`

### symlink for bash_profile
`ln -s ~/personal_setup/dot_files/.bash_profile ~/`

### load spectacle config file
`cp -Rf ./spectacle_settings.json > ~/Library/Application\ Support/Spectacle/Shortcuts.json`

### git completion
`curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash`