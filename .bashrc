echo ".bashrc stands up"
export LSCOLORS=gxfxcxdxbxegexabagacad
alias ls="ls -G"
alias lsalf="ls -alF"
alias mv='mv -b --suffix=_$(date +%Y%m%d).bk'
alias cp='cp -b --suffix=_$(date +%Y%m%d).bk'
alias rm='rm -i'
# command history conf
HISTSIZE=1000000
HISTFILESIZE=1000000

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
