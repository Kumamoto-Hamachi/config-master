echo ".bashrc stands up"
export LSCOLORS=gxfxcxdxbxegexabagacad
alias ls="ls -G"
alias lsalf="ls -alF"
#alias mv='mv -b --suffix=_$(date +%Y%m%d).bk'
#alias cp='cp -b --suffix=_$(date +%Y%m%d).bk'
alias rm='rm -i'
#for nvim to open shortly
alias vi="nvim"
alias ho="chmod 755 exec.sh"
alias fo="./exec.sh"
# command history conf
HISTSIZE=1000000
HISTFILESIZE=1000000

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# for rupa/z-cmd instead of cd-cmd
. /Users/kumamoto/z/z.sh

# fzf for (1)file-search(2)cmd-history-search(3)fuzzy-search from standard-input
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# load twit.sh
if [ -e ~/twit.sh ]; then
	source ~/twit.sh
fi

# load easy_path.sh
if [ -e ~/easy_path.sh ]; then
	source ~/easy_path.sh
fi

