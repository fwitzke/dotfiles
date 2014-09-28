# fwitzke’s dotfiles

inspired by [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)

## Installation
```
git clone git@github.com:fwitzke/dotfiles.git ~/.dotfiles
rcup
```

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](http://brew.sh/) formulae (after installing Homebrew, of course):

```bash
brew bundle ~/Brewfile
```

### Install native apps with `brew cask`

You could also install native apps with [`brew cask`](https://github.com/phinze/homebrew-cask):

```bash
brew bundle ~/Caskfile
```

### TODO
[install oh my zsh](https://github.com/robbyrussell/oh-my-zsh)
[install Vundle](https://github.com/gmarik/Vundle.vim)
[install Solarized](http://ethanschoonover.com/solarized)
[install rvm](http://rvm.io/)
