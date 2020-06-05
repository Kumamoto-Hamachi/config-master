# make terminal like vi
set -o vi


#for python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH" 
eval "$(pyenv init -)"

#I have to migrate the following sentence to .zshrc to study later.
#for coloring names of directories and files
export LSCOLORS=gxfxcxdxbxegexabagacad
alias ls="ls -G"

#for coloring the front part of the termianl and show shortcut version
export PS1="\[\e[38;5;45m\][\u \W]\$ \[\e[m\]"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/kumamoto/.sdkman"
[[ -s "/Users/kumamoto/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/kumamoto/.sdkman/bin/sdkman-init.sh"

export JAVA_HOME=$HOME/.sdkman/candidates/java/current
export PATH=$JAVA_HOME/bin:$PATH

#for caring brew Warning(she scares to be confused her config with pyenv-config)
alias brew="env PATH=${PATH/\/Users\/${USER}\/\.pyenv\/shims:/} brew"
