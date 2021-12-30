set laststatus=2

set shortmess-=S
set showcmd

function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

" Normal
hi Normal ctermfg=016 ctermbg=255
" Replace
hi Pink ctermfg=016 ctermbg=211 guifg=#000000 guibg=#fa6493
hi PinkF ctermfg=211 ctermbg=016 guifg=#fa6493 guibg=#000000
" Insert
hi Blue ctermfg=016 ctermbg=068 guifg=#000000 guibg=#6f9ce5
hi BlueF ctermfg=068 ctermbg=016 guifg=#6f9ce5 guibg=#000000
" Cmd
hi Green ctermfg=016 ctermbg=154 guifg=#000000 guibg=#dcf164
hi GreenF ctermfg=154 ctermbg=016 guifg=#dcf164 guibg=#000000
" Visual
hi Yellow ctermfg=016 ctermbg=222 guifg=#000000 guibg=#ffd787
hi YellowF ctermfg=222 ctermbg=016 guifg=#ffd787 guibg=#000000

set statusline=

set statusline+=%#Normal#%{(mode()=='n')?'\ \ NOR\ ':''}
set statusline+=%#Blue#%{(mode()=='i')?'\ \ INS\ ':''}
set statusline+=%#Green#%{(mode()=='c')?'\ \ CMD\ ':''}
set statusline+=%#Pink#%{(mode()=='R')?'\ \ RPL\ ':''}
set statusline+=%#Yellow#%{(mode()=='v')?'\ \ VSL\ ':''}
set statusline+=%#Yellow#%{(mode()=='V')?'\ \ V-L\ ':''}
" set statusline+=%#Yellow#%{(mode()=='')?'\ \ V-B\ ':''}
set statusline+=%{StatuslineGit()}
set statusline+=%#Statusline#	" SL color
set statusline+=\ %.20F\ %2m	" File path and change status

set statusline+=%=		" Align right
"set statusline+=%#StatusLineNc# " Not-current SL
"set statusline+=\ %y		" FileType
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\ %2l\,%2c\ 	" Ruler: line, col
"set statusline+=\[%L\]		" Total lines
set statusline+=%#Normal#%{(mode()=='n')?'\ \ \%\y':''}
set statusline+=%#Blue#%{(mode()=='i')?'':''}
set statusline+=%#Green#%{(mode()=='c')?'':''}
set statusline+=%#Pink#%{(mode()=='R')?'':''}
