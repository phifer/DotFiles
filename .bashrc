#
# ~/.bashrc
#

# Color Constants

BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
CYAN="\[\033[0;36m\]"
RED="\[\033[0;31m\]"
PURPLE="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
LGRAY="\[\033[0;37m\]"
DGRAY="\[\033[1;30m\]"
LBLUE="\[\033[1;34m\]"
LGREEN="\[\033[1;32m\]"
LCYAN="\[\033[1;36m\]"
LRED="\[\033[1;31m\]"
LPURPLE="\[\033[1;35m\]"
LYELLOW="\[\033[1;33m\]"
WHITE="\[\033[1;37m\]"
NORMAL="\[\033[0;00m\]"

# Moving path up here for dmenu
export PATH="~/bin:${PATH}"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Global Variable Configuration
export EDITOR="vim"
export GREP_OPTIONS="--color=always -n"
export LESS="-R"

# Operation System Specific Setup
if [ $OSTYPE == 'linux-gnu' ]; then
    export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
    if [ -f /etc/profile.d/bash-completion.sh ]; then
        . /etc/profile.d/bash-completion.sh
    fi
elif [ $OSTYPE == 'darwin11' ]; then
    # Mac OS X Paths
    export PATH="~/bin:$(brew --prefix coreutils)/libexec/gnubin:$(brew --prefix ruby)/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/usr/local/share/npm/bin:/usr/local/sbin:/usr/local/bin:${PATH}"
    # Enable Bash Completion
    if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
    fi
fi

# Aliases
alias ls='ls --color=auto'
alias pylab='ipython --pylab'
alias gg='git grep -n'
alias work_haste='HASTE_SERVER=http://hastebin.britecorepro.com haste'

# Increase history to 10,000 entries... erase duplicates, and append on shell exit instead of overwrite.
export HISTSIZE=10000
export HISTCONTROL=erasedups
shopt -s histappend
