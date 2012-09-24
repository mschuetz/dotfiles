# If running interactively, then:
if [ "$PS1" ]; then
    alias ll='ls -l'
    alias la='ls -A'
    alias l='ls -la'
    # set a fancy prompt
    PS1='\u@\h(\t)<$?>[\w]$ ' 
fi

PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

#prolog
export LOCALSZ=100000
export GLOBALSZ=100000

#svn
export EDITOR=vim

export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8

# hm..?
export CLICOLOR=1
export LSCOLORS=ExCxhxdxbxegedabaghbag

# usually I install nodejs in my home directory...
export PATH=$HOME/node/bin:$PATH

# set up rvm environment
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# load host specific configuration
[[ -e $HOME/.bashrc-$(hostname) ]] && source $HOME/.bashrc-$(hostname) 

[[ -e $HOME/.bashrc-private ]] && source $HOME/.bashrc-private 

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
