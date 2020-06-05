set number
set hlsearch
set tabstop=4
set shiftwidth=4
set noexpandtab
filetype plugin indent on
syntax on
set clipboard+=unnamed
set showcmd

" easily make debug(for python)
" nnoremap <space>d ^d$aprint("<c-r>"", <c-r>") # debug
" easily make debug(for PHP)
" cnore = command mode, co^ = comment out ci^ = comment in
cnoremap co^ g:^\s\+[^#]\+# debug:normal I#<space>
cnoremap ci^ g:^\s\+#.\+# debug:normal ^xx
" adjust indent
nnoremap <buffer> == ^v$hyddko<c-r>0<esc>
" execute
nnoremap <space>f :wa \| !echo -e '\e[38;5;0m\e[48;5;51m --- exec ---  \e[m';./exec.sh<cr>
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

"for c++
set exrc
set secure
