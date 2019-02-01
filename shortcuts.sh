# aliases
alias c="clear"
alias j="jobs -l"
alias vi=vim
alias rb="git fetch upstream master; git rebase upstream/master master"
alias gpr="git push -u origin \$(git rev-parse --abbrev-ref HEAD); hub pull-request"

alias cat="bat"
alias ping="prettyping --nolegend"

alias preview="fzf --preview 'bat --color always {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(vim {})+abort'"
