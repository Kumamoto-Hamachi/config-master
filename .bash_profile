echo "bash_profile stands up"
# make terminal like vi
set -o vi


#for python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH" 
eval "$(pyenv init -)"
#for PHP
export PATH="/usr/local/opt/php@7.3/bin:$PATH"
export PATH="/usr/local/opt/php@7.3/sbin:$PATH"

#I have to migrate the following sentence to .zshrc to study later.
#for coloring names of directories and files
export LSCOLORS=gxfxcxdxbxegexabagacad
alias ls="ls -G"

#for coloring the front part of the termianl and show shortcut version
export PS1="\[\e[38;5;45m\][\u \W]\$ \[\e[m\]"

alias brew="env PATH=${PATH/\/Users\/$USER\/\.pyenv\/shims:/} brew"

#for bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#for brew install
export PATH="/usr/local/sbin:$PATH"
