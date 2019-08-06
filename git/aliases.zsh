# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
#hub_path=$(which hub)
#if (( $+commands[hub] ))
#then
#  alias git=$hub_path
#fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# Git Push All. Apparently there is also a program called GNU Privacy Assistant
# that this alias overrides.
alias gpa='for x in $(git remote); do git push "$x" master || break; done'

alias gd='git diff'
alias gc='git commit'
alias gs='git status -sb' # let's not think too much about ghostscript (gs)
alias gg='git grep'
