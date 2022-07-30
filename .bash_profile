# UPDATING THIS FILE
alias prof="vim ~/.bash_profile"
alias r=". ~/.bash_profile"

# ALIASES
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"

# GIT
green="\[\033[0;32m\]"
blue="\[\033[0;36m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"

# git shortcuts
alias glo="git log --pretty=oneline"
alias glu="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"

# HELPER FUNCTIONS
# combine mkdir and cd
mkcd () {
  mkdir "$1"
  cd "$1"
}
