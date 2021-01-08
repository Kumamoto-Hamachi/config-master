echo ".bashrc stands up"
export LSCOLORS=gxfxcxdxbxegexabagacad
alias al="alias"
alias ls="ls -G"
alias lsalf="ls -alF"
#alias mv='mv -b --suffix=_$(date +%Y%m%d).bk'
#alias cp='cp -b --suffix=_$(date +%Y%m%d).bk'
alias rm='rm -i'
#for nvim to open shortly
alias vi="nvim"
# easy exec
function ho(){
	if [ -e "exec.sh" ] ; then
		echo "chmod 755 exec.sh"
		chmod 755 exec.sh
	fi
	if [ -e "tidy.sh" ] ; then
		echo "chmod 755 tidy.sh"
		chmod 755 exec.sh
	fi
}
alias fo="./exec.sh"
# easy shutdown
alias shut_now="sudo shutdown -h now"
# easy mycli
alias mycli_k="mycli -ukumamoto -p"$LOCAL_PW
alias mycli_r="mycli -uroot -p"$LOCAL_PW
# command history conf
HISTSIZE=1000000
HISTFILESIZE=1000000

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

alias man='env LANG=C man'
alias jman='env LANG=ja_JP.UTF-8 man'

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

