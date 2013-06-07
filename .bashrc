#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --colour'

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;31m\]\w\[\033[00m\]\n\$ '

export LD_LIBRARY_PATH=/usr/local/lib
export EDITOR=emacsclient
export PYLINTRC=~/r/lib/trunk/echonest/pylintrc

#[ -e ~/.bashrc_local ] && . ~/.bashrc_local

svndiff()
{
  svn diff "${@}" | colordiff
}

alias cdapitrunk='cd ~/r/projects/developer/trunk'
alias cdapisynch='cd ~/r/projects/developer/branches/quick_update_synch'
alias cdregtest='cd ~/r/qa/trunk/qa/functional/api'
alias cdlibtrunk='cd ~/r/lib/trunk'
alias cdapirepo='cd ~/r/projects/developer/branches/rule_primitives_in_code'

alias colorlog='ack --flush --passthru --color --color-match=blue "DEBUG:" |
                ack --flush --passthru --color --color-match=green "INFO:" |
                ack --flush --passthru --color --color-match=yellow "WARNING:" |
                ack --flush --passthru --color --color-match=red "ERROR:" |
                ack --flush --passthru --color --color-match=magenta "CRITICAL:"'

#[[ -s /etc/profile.d/autojump.sh ]] && . /etc/profile.d/autojump.sh
[[ -s /etc/profile.d/z.sh ]] && . /etc/profile.d/z.sh

[[ -s ~/secret_bashrc ]] && . ~/secret_bashrc

function grepkill()
{
    ps -ef | grep $1 | grep -v grep | awk '{print $2}' | xargs kill
}
function grepkill9()
{
    ps -ef | grep $1 | grep -v grep | awk '{print $2}' | xargs kill -9
}
