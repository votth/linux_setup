"" Color scheme
colorscheme nasaKAT

"" Enbale funzy :^)
set nocompatible

"" Enbale syntax and plugins (for netrw)
syntax on
filetype plugin on

"" File finding
set path+=**
" Display match files for tab completion
set wildmenu

"" Common visual
set number relativenumber	" Show line numbers
set linebreak				" Break lines at word (requires Wrap lines)
set showmatch				" Highlight matching brace
 
set hlsearch				" Highlight all search results, :noh to turn of temperary
set smartcase				" Enable smart-case search
set ignorecase				" Always case-insensitive
set incsearch			 	" Searches for strings incrementally
 
set autoindent				" Auto-indent new lines
set smartindent				" Enable smart-indent
set smarttab				" Enable smart-tabs
set tabstop=4 softtabstop=4	" Number of spaces per Tab
set shiftwidth=4			" Number of auto-indent spaces
"" Advanced
set undolevels=1000			" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

"" Status-line
set laststatus=2
set shortmess-=S			" Show total matched search
set showcmd					" Show current cmd

hi SLYellow ctermfg=016 ctermbg=222
hi SLBlack ctermfg=222 ctermbg=016

set statusline=%#SLBlack#\ 
set statusline+=%n\ 
set statusline+=%#SLYellow#\ 
set statusline+=%.20F\ %2m

set statusline+=%=			" Align right
set statusline+=%#SLBlack#\ 
set statusline+=%y\ 
set statusline+=%#SLYellow#\ 
set statusline+=%2l\,%2c\ 
set statusline+=\[%L\]

"" ???
set undodir=~/.vim/undodir
set undofile

