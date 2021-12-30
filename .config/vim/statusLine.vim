"" Initiate statusline
set laststatus=2

"" Default goodies, but it's in a separate line
set shortmess-=S		" Show total matched search
set showcmd			" Show current cmd

"" Define color segments
hi SLYellow ctermfg=016 ctermbg=222
hi SLBlack ctermfg=222 ctermbg=016

"" Line `left` side
set statusline=%#SLBlack#
set statusline+=\ %n\ 		" Show buffer
set statusline+=%#SLYellow#
set statusline+=\ %.20f\ %2m	" File path and change status
"" `right` side
set statusline+=%=		" Align right
set statusline+=%#SLBlack#
set statusline+=\ %y\ 		" FileType 
set statusline+=%#SLYellow#
set statusline+=\ %2l\,%2c\ 	" Ruler: line, col
set statusline+=[%L]		" Total lines
