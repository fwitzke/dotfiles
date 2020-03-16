# aliases
alias c="clear"
alias j="jobs -l"
alias vi=vim
alias rb="git pull --rebase origin master"
alias gpr="git push -u origin \$(git rev-parse --abbrev-ref HEAD); hub pull-request"
alias ctags="`brew --prefix`/bin/ctags"

alias be="bundle exec $1"
alias rc="bundle exec rails console"

alias cat="bat"
alias ping="prettyping --nolegend"

alias preview="fzf --preview 'bat --color always {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(vim {})+abort'"
