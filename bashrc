export TERM=xterm-256color

#aliases
alias la='ls -a'
alias ll='ls -la'
alias l='ls -l'

alias gst='git status'
alias gpl='git pull'
alias gco='git checkout'
alias gc='git commit'
alias gcv='git commit -v'
alias gd='git diff'
alias glg='git lg'
alias gfo='git fetch origin'
alias hstart="/usr/local/Cellar/hadoop/2.7.0/sbin/start-yarn.sh;/usr/local/Cellar/hadoop/2.7.0/sbin/start-dfs.sh"
alias hstop="/usr/local/Cellar/hadoop/2.7.0/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.7.0/sbin/stop-dfs.sh"
alias lub="lein do clean, uberjar"

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

#export PS1="\u:\W<U+1F31B>  $ "
export PS1="<U+1F31B> :\W \[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#    . $(brew --prefix)/etc/bash_completion
#fi
