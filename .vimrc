"" Common config
set number relativenumber		" Show line numbers, with absolute position
set showmatch					" Highlight matching brackets
set encoding=utf-8				" UTF-8 encoding
set autoread					" Auto update files with changes
" Wrapping
set linebreak					" Break lines at word
set textwidth=0					" Similar to :set paste
set wrapmargin=0				" help dealing with unwanted <EOL>
" Search 
set hlsearch					" Highlight all search results, :noh to turn of temporarily
set ignorecase					" Always case-insensitive
set smartcase					" Overdrive ignorecase if an uppercase is typed
set incsearch					" Starts search immediately
" Indentation 
set tabstop=4 softtabstop=4		" Number of spaces per Tab
set shiftwidth=4				" Number of auto-indent spaces
set smartindent					" Enable smart-indent
set smarttab					" Enable smart-tabs
set autoindent					" Copy indent from current line
" Scrolling
set scrolloff=15				" Show + line when scrolling jk
set sidescrolloff=5				" Show + column when scrolling hl
" Advanced
set undodir=~/.vim/undodir
set undofile
set undolevels=1000				" Number of undo levels
"
set backspace=indent,eol,start	" Backspace through everything
set complete-=i					" Completation?
set tabpagemax=50
set history=1000

"" Color scheme
colorscheme nasaKAT
" Allow the use of bright color without bold
if &t_Co == 8 && $TERM !~# '^Eterm'
  set t_Co=16
endif

"" Enable syntax and plugins
syntax on
filetype plugin indent on

"" Enbale funzy :^)
set nocompatible

"" File finding
set path+=**					" Add to path, find in subs of sub-dirs
set wildmenu					" Display match files for tab completion
"" File browsing - netrw
let g:netrw_banner=0			" disable banner
let g:netrw_browser_split=4		" open in prior window
let g:netrw_winsize=20			" limit netrw width
let g:netrw_altv=1				" open splits to the right
let g:netrw_liststyle=3			" tree view
let g:netrw_list_hide= netrw_gitignore#Hide().'.*\.swp$'
" let g:netrw_list_hide='.\(^\|\s\s)\zs\.\S\+'

"" Mapping
" Snippet
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

" <C-L> to clear search highlight
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

"" Create 'tags' file (using with ctags) for tags jumping
command! MakeTags !ctags -R .
if has('path_extra')
	setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

"" ???
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options
set viewoptions-=options

" statusLine.vim config
source $HOME/.config/vim/statusLine.vim
