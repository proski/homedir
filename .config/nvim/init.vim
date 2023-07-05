" Remap :X to :x
cnoreabbrev <expr> X (getcmdtype() is# ':' && getcmdline() is# 'X') ? 'x' : 'X'
