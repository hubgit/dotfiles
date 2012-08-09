export PATH=/usr/local/bin:$PATH
export CLICOLOR=true
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
export EDITOR=nano

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

. ~/.bash_aliases

