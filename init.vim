".vimrc Scripts-------------------------------------------------
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
"End .vimrc Scripts-------------------------------------------------

"dein Scripts-------------------------------------------------
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  "TOML file containing plugin_list
  let g:rc_dir    = expand('~/.config/nvim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  "load TOML and cache the result
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif
" プラグインの追加・削除やtomlファイルの設定を変更した後は
" 適宜 call dein#update や call dein#clear_state を呼んでください。

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------------------------------



"" assingn <Space> Leader
let mapleader =" "
"" open new file
"" nnoremap <Leader>o :CtrlP<CR>
"" save/close&save file ASAP
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
"" copy & paste to clipboard
vmap <Leader>y  "+y
"" easily move to Visual mode
nmap <Leader><Leader> V 
"" easily move to splitwindow to another
nmap <Leader>w <C-w>
