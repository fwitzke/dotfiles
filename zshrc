# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

DEFAULT_USER="fwitzke"

export LC_ALL=en_US.utf-8 
export LANG="$LC_ALL" 

#export PATH=/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.rvm/bin
#export PATH=/Library/Frameworks/GDAL.framework/Versions/1.11/Programs:$PATH

export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

# use brew version instead of default osx
alias vim="/usr/local/bin/vim"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bower git)

source $ZSH/oh-my-zsh.sh
