## Installation

### clone repo
`cd && git clone https://github.com/markeban/personal_setup.git && cd personal_setup/`

### install homebrew and bundle
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle
brew bundle check
```

### install oh-my-zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

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

### symlink for zsh
`ln -s ~/personal_setup/dot_files/.zshrc ~/`

### make zsh default
`chsh -s $(which zsh)`

### Set VSCode as default git editor
`git config --global core.editor "code --wait"`

### custom plugin for git-it-on (git open)
`git clone https://github.com/peterhurford/git-it-on.zsh ~/.oh-my-zsh/custom/plugins/git-it-on`

### load spectacle config file
`cp -Rf ./spectacle_settings.json > ~/Library/Application\ Support/Spectacle/Shortcuts.json`
