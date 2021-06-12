echo ".bash_profile stands up"
# make terminal like vi
set -o vi


#for python
if [ -f ~/.profile ]; then
source ~/.profile
fi

#for PHP
#export PATH="/usr/local/opt/php@7.3/bin:$PATH"
#export PATH="/usr/local/opt/php@7.3/sbin:$PATH"
# for Node.js installed by nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

#I have to migrate the following sentence to .zshrc to study later.
#for coloring names of directories and files
export LSCOLORS=gxfxcxdxbxegexabagacad
alias ls="ls -G"

#for coloring the front part of the termianl and show shortcut version
export PS1="\[\e[38;5;45m\][\u \W]\$ \[\e[m\]"
#export PS1="\[\033[1m\]\[\033[31m\](#\\\`-´)\[\033[0m\]\[\033[0m\]< \[\033[32m\]\w\[\033[0m\] $ "
#export PS1="\[\033[31m\](*'-')\[\033[0m\]< \[\033[32m\]\w\[\033[0m\] $"

alias brew="env PATH=${PATH/\/Users\/$USER\/\.pyenv\/shims:/} brew"

#for bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#for brew install
export PATH="/usr/local/sbin:$PATH"


#for docker command completion
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
# . $(brew --prefix)/etc/bash_completion
# fi

# load easy_pw
if [ -f ~/easy_pw.sh ]; then
source ~/easy_pw.sh
fi
