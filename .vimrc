"" Show line number for help doc
autocmd FileType help setlocal number relativenumber

"" Common config
set number relativenumber	" Show line numbers, with absolute position
set showmatch			" Highlight matching brackets
set encoding=utf-8		" UTF-8 encoding
set autoread			" Auto update files with changes
" Wrapping
set linebreak			" Break lines at word
" Search
set incsearch			" Starts search immediately
set hlsearch			" Highlight all search results
				" :noh to turn of temporarily
set ignorecase			" Always case-insensitive
set smartcase			" Overdrive ignorecase
				" if an uppercase is typed
" Scrolling
set scrolloff=15		" Show + line when scrolling jk
set sidescrolloff=5		" Show + column when scrolling hl
" Track changes/(un)dos		" Will undo even after :wq
set undodir=~/.vim/undodir
set undofile
set undolevels=1000		" Number of undo levels
" Misc
set backspace=indent,eol,start	" Backspace through everything
set tabpagemax=50


"" Color
colorscheme nasaKAT
set termguicolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
let g:Hexokinase_highlighters = ['backgroundfull']


"" Indentation 
set tabstop=8			" Number of spaces per Tab
set softtabstop=4
set shiftwidth=4		" Number of auto-indent spaces
set smarttab			" Enable smart-tabs
set autoindent			" Copy indent from current line


"" Enable syntax and utilities
syntax on
filetype plugin indent on
"" Enbale funzy :^)
" set nocompatible		" Not needed, since making ~/.vimrc will 
				" auto-generate, and it can mess up others


"" Files
" Ffinding
set path+=**			" Add to path, find in subs of sub-dirs
set wildmenu			" Display match files for tab completion
" Fbrowsing - netrw
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
"let g:netrw_list_hide= netrw_gitignore#Hide().'.*\.swp$'
"let g:netrw_list_hide='.\(^\|\s\s)\zs\.\S\+'
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

"" Snippet
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a


"" Mapping
"
"	n[nore]map	for normal-mode
"	v[nore]map	for visual and select
"	x[nore]map	for visual only
"	map		for everything
"
" <C-L> to clear search highlight
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif
" Show current unwritten changes
nnoremap ,e :w !diff % -<CR>
" Insert newline without enter I-mode
nnoremap <silent> [<space>  :<c-u>put!=repeat([''],v:count)<bar>']+1<cr>
nnoremap <silent> ]<space>  :<c-u>put =repeat([''],v:count)<bar>'[-1<cr>


"" Highlight - hi
" hi non-ascii
augroup Hinonascii
    autocmd!
    autocmd BufEnter *
	\ syntax match nonascii "[^\x00-\x7F]" |
	\ highlight nonascii ctermfg=NONE ctermbg=red
augroup END


"" Tags file (using with ctags) for tags jumping
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


"" statusLine.vim config
source $HOME/.config/vim/statusLine.vim


"" Plugins: ~/.vim/pack/plugins/start/
"  from git/tpope
"	commentary
"	fugitive
"   	repeat
"   	surround
