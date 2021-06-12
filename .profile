echo ".profile stands up"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# load .bash_rc
if [ -f ~/.bashrc ]; then
source ~/.bashrc
fi
