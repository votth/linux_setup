"" Initiate statusline
set laststatus=2

"" Default goodies, but it's in a separate line
set shortmess-=S		" Show total matched search
set showcmd			" Show current cmd

"" Git indicator
function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

" "" Normal
" hi Normal ctermfg=016 ctermbg=255 guifg=#a4a6a8 guibg=#000000
" " Replace
" hi Pink ctermfg=016 ctermbg=211 guifg=#000000 guibg=#fa6493
" hi PinkF ctermfg=211 ctermbg=016 guifg=#fa6493 guibg=#000000
" " Insert
" hi Blue ctermfg=016 ctermbg=068 guifg=#000000 guibg=#6f9ce5
" hi BlueF ctermfg=068 ctermbg=016 guifg=#6f9ce5 guibg=#000000
" " Cmd
" hi Green ctermfg=016 ctermbg=154 guifg=#000000 guibg=#dcf164
" hi GreenF ctermfg=154 ctermbg=016 guifg=#dcf164 guibg=#000000
" Visual
hi Yellow ctermfg=016 ctermbg=222 guifg=#000000 guibg=#ffd787
hi YellowF ctermfg=222 ctermbg=016 guifg=#ffd787 guibg=#000000

"" Line `left` side
set statusline=%#YellowF#
set statusline+=\ %n\ 		" Show buffer
set statusline+=%#Yellow#
set statusline+=\ %.20f\ %2m	" File path and change status
"" `right` side
set statusline+=%=		" Align right
set statusline+=%#YellowF#
set statusline+=\ %y\ 		" FileType 
set statusline+=%#Yellow#
set statusline+=\ %2l\,%2c\ 	" Ruler: line, col
set statusline+=[%L]		" Total lines
