echo ".bashrc stands up"
export LSCOLORS=gxfxcxdxbxegexabagacad
alias al="alias"
alias ls="ls -G"
alias lsalf="ls -alF"
alias ll="ls -lh"
alias f8="flake8"
alias cl="clear"
#alias mv='mv -b --suffix=_$(date +%Y%m%d).bk'
#alias cp='cp -b --suffix=_$(date +%Y%m%d).bk'
alias rm='rm -i'
alias pp='pwd | pbcopy'

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
# for python prepare
alias fo="./exec.sh"
alias four_python="echo 'fifi' && cp -r ~/four/python/* ./"
alias four_pythond="echo 'doradora' && cp -r ~/four/python ./"
eval "$(pyenv init -)"
alias mp="cp -n /Users/kumamoto/Documents/atcoder_pr/generic_set/main.py ."
alias mpv="mp && vi main.py"


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

# load mariadb.sh
if [ -e ~/mariadb.sh ]; then
	source ~/mariadb.sh
fi

alias vi="nvim"

# edit & reflect bash & bashrc
alias eb="vi ~/.bashrc"
alias sb="source ~/.bashrc"
alias ebp="vi ~/.bash_profile"
alias sbp="source ~/.bash_profile"
# edit vimrc
alias ev="vi ~/.vimrc"

# for git
alias st="git status"
alias br="git branch"

# for docker
alias da="alias | grep docker"
alias doc="docker container"
alias doi="docker image"
alias dos="docker search"

