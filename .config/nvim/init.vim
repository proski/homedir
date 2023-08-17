" Remap :X to :x
cnoreabbrev <expr> X (getcmdtype() is# ':' && getcmdline() is# 'X') ? 'x' : 'X'

" Enable cursor wrapping
set whichwrap+=<,>,h,l,[,]

" Use spaces for indent
set expandtab

" Add support for Ctrl keys in insert more
imap <C-a> <ESC>I
imap <C-d> <DEL>
imap <C-e> <ESC>A

" Enable mouse in all modes
set mouse=a
