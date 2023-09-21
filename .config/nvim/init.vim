" Remap :X to :x
cnoreabbrev <expr> X (getcmdtype() is# ':' && getcmdline() is# 'X') ? 'x' : 'X'

" Enable cursor wrapping
set whichwrap+=<,>,h,l,[,]

" Enable file type detection, plugin, and indent
filetype plugin indent on

" Show existing tabs as 8 spaces
set tabstop=8

" Use 4 spaces when indenting with '>'
set shiftwidth=4

" Insert spaces when Tab is pressed
set expandtab

" Add support for Ctrl keys in insert more
imap <C-a> <ESC>I
imap <C-d> <DEL>
imap <C-e> <ESC>A

" Enable mouse in all modes
set mouse=a
