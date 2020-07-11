set number
set title
set list
set hlsearch
set tabstop=4
set shiftwidth=4
set noexpandtab
filetype plugin indent on
syntax on
set clipboard+=unnamed
set showcmd
set nowrap

" easily make debug(for python)
" nnoremap <space>d ^d$aprint("<c-r>"", <c-r>") # debug
" easily make debug(for PHP)
" cnore = command mode, co^ = comment out ci^ = comment in
cnoremap co^ g:^\s\+[^#]\+# debug:normal I#<space>
cnoremap ci^ g:^\s\+#.\+# debug:normal ^xx
" adjust indent
nnoremap <buffer> == ^v$hyddko<c-r>0<esc>
" execute
nnoremap <space>e :wa \| !echo -e '\e[38;5;0m\e[48;5;51m --- exec ---  \e[m';./exec.sh<cr>
inoremap <c-g> <left>
hi Pmenu ctermbg=255
hi PmenuSel ctermbg=22 ctermfg=white
" easily make HTML template
nnoremap <space>! :read ~/.vim/ftplugin/html/template.html
" easily open this file in a chrome browser
nnoremap <space>b :!open -a /Applications/Google\ Chrome.app %
inoremap jj  <esc>

" I don't understand the following sentence.
source $VIMRUNTIME/macros/matchit.vim

" for The NERD Tree
map <C-n> :NERDTreeToggle<CR>

"for c++
set exrc
set secure

"easy save
nnoremap <Space>ww :w<CR>
nnoremap <Space>wq :wq<CR>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/kumamoto/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/kumamoto/.cache/dein')
  " XDG base direcory compartible
  let g:dein#cache_directory = $HOME . '/.cache/dein'

  call dein#begin('/Users/kumamoto/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/kumamoto/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  "---tomlのための記述ここから---
  " 管理するプラグインを記述したファイル
  let s:toml_dir = '~/.config/nvim/rc'
  let s:toml = s:toml_dir . '/dein.toml'
  let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'
  " tomlファイルをキャッシュしておく
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  "---tomlのための記述ここまで---

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
call map(dein#check_clean(), "delete(v:val, 'rf')")

"End dein Scripts-------------------------
"参考:https://ashnoa.hatenablog.com/entry/2019/10/16/230202
