"" Color scheme
colorscheme nasaKAT

"" Enbale funzy :^)
set nocompatible
set clipboard=unnamedplus

"" Enbale syntax and plugins (for netrw)
syntax on
filetype plugin on

"" File finding
set path+=**
" Display match files for tab completion
set wildmenu
" Browsing
let g:netrw_banner=0							" disable banner
let g:netrw_browser_split=4						" open in prior window
let g:netrw_altv=1								" open splits to the right
let g:netrw_liststyle=3							" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide='.\(^\|\s\s)\zs\.\S\+'

"" Snippets
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

"" Create 'tags' file (using with ctags)
command! MakeTags !ctags -R .

"" Common config
set number relativenumber	" Show line numbers
set linebreak				" Break lines at word (requires Wrap lines)
set showmatch				" Highlight matching brace
 
set hlsearch				" Highlight all search results, :noh to turn of temperary
set smartcase				" Enable smart-case search
set ignorecase				" Always case-insensitive
set incsearch			 	" Searches for strings incrementally
" Indentation 
set autoindent				" Auto-indent new lines
set smartindent				" Enable smart-indent
set smarttab				" Enable smart-tabs
set tabstop=4 softtabstop=4	" Number of spaces per Tab
set shiftwidth=4			" Number of auto-indent spaces
"" Advanced
set undolevels=1000			" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

"" ???
set undodir=~/.vim/undodir
set undofile

"" Add statusLine.vim
source $HOME/.config/vim/statusLine.vim
