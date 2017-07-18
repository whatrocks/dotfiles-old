# Profile
alias prof="atom ~/.bash_profile"
alias r=". ~/.bash_profile"

# APPLICATION ALIASES
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# NAVIGATIONAL ALIASES
alias ldc="cd /Users/charrington/workspace/lendup/play-1.2.6.7/ldc"
alias runny="../play run --%charrington -f"
alias testy="../play test --%test-unit"
alias cubi="cd /Users/charrington/lendup/cubicle"
alias hubb="cd /Users/charrington/lendup/hubble"
alias tess="cd /Users/charrington/lendup/tesseract"
alias hackday="cd /Users/charrington/lendup/hackday/lcard-app"
alias iron="cd /Users/charrington/lendup/iron-bank/ironbank-credit/src/main/javascript"
alias gg="cd /Users/charrington/projects/great-good"
alias migrate="../play evolutions:apply --%{charrington}"

# Postgres (only need to do this once)
PATH=$PATH:/Library/PostgreSQL/9.3/bin/

### Java exports & Functions
java6 () {
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)
}

java7 () {
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
}

java8 () {
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
}
### Default to java 6
java6


### Intellij Helpers
idea8 () {
    java8&&export IDEA_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk&&idea .
}

### CS TOOL COMMANDS
alias cs-apache="sudo apachectl -k restart"

## FOLLOWER DB
alias follower='psql "dbname=da34frnf9tgu15 host=ec2-50-17-231-119.compute-1.amazonaws.com port=5432 user=u7mjn9ql86sb63 password=p1i4dj7pduehc568jvgrh8qsi10 sslmode=require"'

## FORK DB
alias fork='psql "dbname=da34frnf9tgu15 host=ec2-34-224-50-15.compute-1.amazonaws.com port=5432 user=uecldr2q3mlnpt password=p4821aa651bd74eb4432e8462261cc37d40cc929e325f537bfea154710c6751b2 sslmode=require"'

# corinth playgroup
export AIRFLOW_HOME=/Users/charrington/lendup/corinth-playground/corinth

#MAVEN (Only need to do this once)
export M2_HOME=/usr/local/apache-maven-3.3.9
export PATH=$PATH:$M2_HOME/bin

# Nand2Tetris course
export PATH=$PATH:~/Desktop/nand2tetris/tools

export CONSUL_DATA=/Users/charrington/lendup/consul_data

#GIT STUFF
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

alias glo="git log --pretty=oneline"
alias glu="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"

# HELPER FUNCTIONS
# combine mkdir and cd
mkcd () {
  mkdir "$1"
  cd "$1"
}

# JENKINS
export JENKINS_USER=whatrocks
export JENKINS_TOKEN=1a3bb7b4f6de69cef8b62a98a0d6c327
export JENKINS_MODE=1


export NVM_DIR="/Users/charrington/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

enter_directory(){
    if [ "$PWD" != "$PREV_PWD" ]; then
        PREV_PWD="$PWD";
        if [ -e ".nvmrc" ]; then
            nvm use;
        fi
    fi
}
export PROMPT_COMMAND="$PROMPT_COMMAND enter_directory"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh


export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

##
# Your previous /Users/charrington/.bash_profile file was backed up as /Users/charrington/.bash_profile.macports-saved_2017-01-23_at_16:16:08
##

# MacPorts Installer addition on 2017-01-23_at_16:16:08: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# added by Anaconda2 4.4.0 installer
export PATH="/anaconda/bin:$PATH"
