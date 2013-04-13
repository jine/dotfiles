# Handys
alias .='echo $PWD'
alias ..='cd ..'
alias cd..='cd ..'
alias c='clear'
alias netstat='sudo netstat -tulanp'
alias fastping='ping -c 100 -s.2'
alias edit='nano'
alias vi='nano'
alias vim='nano'
alias snano='sudo nano'
alias now='date +"%Y-%m-%d %T"'
alias sha1='openssl sha1'
alias free='free -m'
alias df='df -H'
alias ifconfig='/sbin/ifconfig -a'

alias root='sudo su -'

# apt-get
alias apt-get='sudo apt-get'
alias apt-update='sudo apt-get update'
alias apt-upgrade='sudo apt-get update && sudo apt-get upgrade'
alias apt-search='sudo apt-cache search'
alias apt-show='sudo apt-cache show'

# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Spelling & extras
alias ll='ls -lAXh --color=always'
alias la='ls -A --color=always'
alias l='ls -al --color=always'

# Git
alias commit='confirm && git add . && git commit -a'

# Fancy
alias mount='mount | column -t'
alias diff='colordiff'

##################################
# Standard aliases goes below.
##################################

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias vdir='vdir -al --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

confirm () {
    # call with a prompt string or use a default
    read -r -p "${1:-Are you sure? [Y/n]} " response
    case $response in
        [yY][eE][sS]|[yY])
            true
            ;;
        *)
            false
            ;;
    esac
}
