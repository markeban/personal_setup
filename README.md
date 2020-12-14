## Installation

### clone repo
`cd && git clone https://github.com/markeban/personal_setup.git && cd personal_setup/`

### install homebrew and bundle
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle
brew bundle check
```

### install oh-my-zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

### load iterm config
```
# NOTE: This did not work. I had to update the file config path in iTerm2 UI (steps here: https://stackoverflow.com/a/23356086) - which copies over the existing, default config found in this folder - than manually paste over the old com.googlecode.iterm2.plist file. Then it worked.

# sudo defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/personal_setup"
# sudo defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
# sudo defaults read com.googlecode.iterm2.plist
```

### load os defaults
`source ./os_defaults.sh`

### symlink for bash_profile
`ln -s ~/personal_setup/dot_files/.bash_profile ~/`

### symlink for zsh
# (You may need to remove the existing .zshrc file)
`ln -s ~/personal_setup/dot_files/.zshrc ~/`

### make zsh default
`chsh -s $(which zsh)`

### Set VSCode as default git editor
`git config --global core.editor "code --wait"`

### custom plugin for git-it-on (git open)
`git clone https://github.com/peterhurford/git-it-on.zsh ~/.oh-my-zsh/custom/plugins/git-it-on`

### load spectacle config file
`cp -Rf ./spectacle_settings.json > ~/Library/Application\ Support/Spectacle/Shortcuts.json`
