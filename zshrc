# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

export LC_ALL=en_US.utf-8 
export LANG="$LC_ALL" 
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:$PATH
#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export GOPATH=/Users/fernandowitzke/Projects/go
export PATH=$PATH:$GOPATH/bin

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $HOME/.shortcuts.sh
source $ZSH/oh-my-zsh.sh

# setup nvm
 export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"

# initialize rbenv
eval "$(rbenv init -)"
export PATH="/usr/local/opt/percona-server@5.6/bin:$PATH"

# XXX
export VAGRANT_DEV_MODE=HYBRID

export FZF_DEFAULT_COMMAND='ag -l --nocolor --hidden -g ""'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
