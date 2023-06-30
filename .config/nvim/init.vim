set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Enable syntax highlighting
syntax on

" Show cursor position
set ruler

" Enable mouse support
set mouse=a

" Remap :X to :x
cnoreabbrev <expr> X (getcmdtype() is# ':' && getcmdline() is# 'X') ? 'x' : 'X'
