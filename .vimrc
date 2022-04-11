"" Show line number for help doc
autocmd FileType help setlocal number relativenumber

" Common config {{{
set number relativenumber	" Show line numbers, with absolute position
set showmatch			" Highlight matching brackets
set encoding=utf-8		" UTF-8 encoding
set autoread			" Auto update files with changes
" Wrapping
set linebreak			" Break lines at word
"" Indentation 
set tabstop=4			" Number of spaces per Tab
set softtabstop=4
set shiftwidth=4		" Number of auto-indent spaces
set smarttab			" Enable smart-tabs
set autoindent			" Copy indent from current line
" Search
set incsearch			" Starts search immediately
set nohlsearch			" Highlight all search results
set ignorecase			" Always case-insensitive
set smartcase			" Overdrive ignorecase
				" if an uppercase is typed
" Scrolling
set scrolloff=10		" Show + line when scrolling jk
set sidescrolloff=35		" Show + column when scrolling hl
" Track changes/(un)dos		" Will undo even after :wq
set undodir=~/.vim/undodir
set undofile
set undolevels=1000		" Number of undo levels
" Misc
set backspace=indent,eol,start	" Backspace through everything
set tabpagemax=50
set showbreak=↪\ 
set list
set listchars=tab:▸\ ,nbsp:␣,trail:•,precedes:←,extends:→
" eol:↲,
"" Enable syntax and utilities
syntax on
filetype plugin indent on
" }}}

" Color {{{
colorscheme nasaKAT
set termguicolors
" fix for termguicolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"	
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
" Hexokinase plugin for hexcode to color
let g:Hexokinase_highlighters = ['backgroundfull']
" }}}

" Files {{{
" Ffinding
set path+=**			" Add to path, find in subs of sub-dirs
set wildmenu			" Display match files for tab completion
"   h: ins-complete
"
"   ^x^n    for just in this file
"   ^x^f    for filenames
"   ^x^]    for tags
"   ^n	    for anything considered 'complete'
"
"   ^n ^p   to looking through this popup list
" Fbrowsing - netrw
let g:netrw_hide = 1	" hide dotfiles, gh to toggle
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_list_hide= netrw_gitignore#Hide().'.*\.swp$'
let g:netrw_list_hide='.\(^\|\s\s)\zs\.\S\+'
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 75
" Auto-open netrw with vim, NERDtree behavior
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
" }}}

" Mapping
"
"	n[nore]map	for normal-mode
"	v[nore]map	for visual and select
"	x[nore]map	for visual only
"	map		for everything
"
" Snippet
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a
" Shortcuts
" <C-L> to clear search highlight
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif
" Show current unwritten changes
nnoremap ,e :w !diff % -<CR>
" Insert newline without enter I-mode
nnoremap <silent> [<space>  :<c-u>put!=repeat([''],v:count)<bar>']+1<cr>
nnoremap <silent> ]<space>  :<c-u>put =repeat([''],v:count)<bar>'[-1<cr>
" Folding
nnoremap <space> za
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

" Highlight - hi
" " hi non-ascii
" augroup Hinonascii
"     autocmd!
"     autocmd BufEnter *
" 	\ syntax match nonascii "[^\x00-\x7F]" |
" 	\ highlight nonascii ctermfg=NONE ctermbg=red
" augroup END

" Tags file (using with ctags) for tags jumping
command! MakeTags !ctags -R .
if has('path_extra')
    setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

"" ???
if !empty(&viminfo)
    set viminfo^=!		" :changes to show past changes
endif
set history=10000
"set sessionoptions-=options
"set viewoptions-=options

" Statusline and Plugins {{{
" source $HOME/.config/vim/statusLine.vim
source $HOME/.config/vim/lightlineCustom.vim
"" Plugins: ~/.vim/pack/plugins/start/
"  from git/tpope
"	commentary
"	fugitive
"   	repeat
"   	surround
"   	markdown
"
"   	lightline
" }}}
let g:instant_markdown_autostart = 0
let g:markdown_fenced_languages = ['html', 'css', 'python', 'bash=sh', 'c', 'cpp']
