" https://stackoverflow.com/questions/48271865/vim-whats-the-best-way-to-set-statusline-color-to-change-based-on-mode

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

let g:currentmode={
      \ 'n'  : 'n',
      \ 'v'  : 'v',
      \ 'V'  : 'vl',
      \ '' : 'vb',
      \ 'i'  : 'i',
      \ 'R'  : 'r',
      \ 'Rv' : 'rv',
      \ 'c'  : 'c',
      \ 't'  : 'f',
      \}

hi NormalColor ctermbg=black ctermfg=white
hi InsertColor ctermbg=darkgreen ctermfg=black
hi ReplaceColor ctermbg=darkred ctermfg=black
hi VisualColor  ctermbg=darkblue ctermfg=black


set laststatus=2
set statusline=
set statusline+=%#NormalColor#%{(g:currentmode[mode()]=='n')?'\ \ normal\ ':''}
set statusline+=%#InsertColor#%{(g:currentmode[mode()]=='i')?'\ \ insert\ ':''}
set statusline+=%#ReplaceColor#%{(g:currentmode[mode()]=='r')?'\ \ replace\ ':''}
set statusline+=%#ReplaceColor#%{(g:currentmode[mode()]=='rv')?'\ \ v-replace\ ':''}
set statusline+=%#VisualColor#%{(g:currentmode[mode()]=='v')?'\ \ visual\ ':''}
set statusline+=%#VisualColor#%{(g:currentmode[mode()]=='vl')?'\ \ v-line\ ':''}
set statusline+=%#VisualColor#%{(g:currentmode[mode()]=='vb')?'\ \ v-block\ ':''}
set statusline+=%#NormalColor#%{(g:currentmode[mode()]=='c')?'\ \ command\ ':''}
set statusline+=%#NormalColor#%{(g:currentmode[mode()]=='f')?'\ \ finder\ ':''}
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#Statusline#
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=%#StatusLineNc#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %p%%
set statusline+=\ %l:%c
