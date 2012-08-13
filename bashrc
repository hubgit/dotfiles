# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

export EDITOR=nano

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=
HISTFILESIZE=

# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable colors
export CLICOLOR=true
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# use colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# color prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# alias definitions file
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# programmable completion file
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

if [ -x /usr/local/bin/brew ]; then
	if [ -f `brew --prefix`/etc/bash_completion ]; then
	  . `brew --prefix`/etc/bash_completion
	fi
fi
