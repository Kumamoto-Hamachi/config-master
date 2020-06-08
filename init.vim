".vimrc Scripts-------------------------------------------------
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
"End .vimrc Scripts-------------------------------------------------




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
