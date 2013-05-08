#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --colour'

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;31m\]\w\[\033[00m\]\n\$ '

export LD_LIBRARY_PATH=/usr/local/lib
export EDITOR=emacs-client

tunnel_uni() {
    ssh -f andreas@178.79.177.198 -L 5672:178.79.177.198:5672 -N
    ssh -f andreas@178.79.177.198 -L 9160:178.79.177.198:9160 -N
}
