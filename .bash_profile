# UPDATING THIS FILE
alias prof="vim ~/.bash_profile"
alias r=". ~/.bash_profile"

# PATH
PATH=/usr/bin:/bin:/usr/sbin:/sbin
export PATH

# ALIASES
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias sicp="rlwrap scheme"
alias 61a="stk-simply"

# GIT STUFF
# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;36m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Enable tab completion
source ~/git-completion.bash

# Change command prompt
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

### NODE AND NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

enter_directory(){
    if [ "$PWD" != "$PREV_PWD" ]; then
        PREV_PWD="$PWD";
        if [ -e ".nvmrc" ]; then
            nvm use;
        fi
    fi
}
export PROMPT_COMMAND="$PROMPT_COMMAND enter_directory"
export PATH=/Users/charlie/.nvm/versions/node/v6.10.2/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

### GOLANG
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=/Users/charlie/go
