export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export CLICOLOR=true
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
export EDITOR=nano
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

. ~/.bash_aliases

