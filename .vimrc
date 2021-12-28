"" Show line number for help doc, netrw
autocmd FileType help setlocal number relativenumber
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

"" Common config
set number relativenumber		" Show line numbers, with absolute position
set showmatch					" Highlight matching brackets
set encoding=utf-8				" UTF-8 encoding
set autoread					" Auto update files with changes
" Wrapping
set linebreak					" Break lines at word
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
" Track changes/(un)dos
set undodir=~/.vim/undodir
set undofile
set undolevels=1000				" Number of undo levels
set undoreload=10000
" Misc
set backspace=indent,eol,start	" Backspace through everything
set complete-=i					" Completation?
set tabpagemax=50


"" Color
colorscheme nasaKAT
" set termguicolors
" let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
" let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
" let g:Hexokinase_highlighters = ['backgroundfull']

"" Enable syntax and plugins
syntax on
filetype plugin indent on
"" Enbale funzy :^)
set nocompatible


"" Files
" Ffinding
set path+=**					" Add to path, find in subs of sub-dirs
set wildmenu					" Display match files for tab completion
" Fbrowsing - netrw
let g:netrw_banner=0			" disable banner
let g:netrw_browser_split=4		" open in prior window
let g:netrw_winsize=20			" limit netrw width
let g:netrw_altv=1				" open splits to the right
let g:netrw_liststyle=3			" tree view
let g:netrw_list_hide= netrw_gitignore#Hide().'.*\.swp$'
" let g:netrw_list_hide='.\(^\|\s\s)\zs\.\S\+'


"" Snippet
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a


"" Mapping
" <C-L> to clear search highlight
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif
" Show current unwritten changes
nnoremap ,e :w !diff % -<CR>
" Insert newline without enter I-mode
nnoremap <silent> [<space>  :<c-u>put!=repeat([''],v:count)<bar>']+1<cr>
nnoremap <silent> ]<space>  :<c-u>put =repeat([''],v:count)<bar>'[-1<cr>


"" Highlight - hl
" hl unicode
augroup Hiunicode
  autocmd!
  autocmd BufEnter *
      \ syntax match nonascii "[^\x00-\x7F]" |
      \ highlight nonascii ctermfg=NONE ctermbg=red
augroup END
" hl non-ascii
syntax match nonascii "[^\x00-\x7F]"
hi nonascii ctermfg=NONE ctermbg=red


"" Tags file (using with ctags) for tags jumping
command! MakeTags !ctags -R .
if has('path_extra')
	setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif


"" ???
if !empty(&viminfo)
  set viminfo^=!		" :changes to show past changes
endif
set history=1000
set sessionoptions-=options
set viewoptions-=options


"" statusLine.vim config
source $HOME/.config/vim/statusLine.vim


"" Plugins: ~/.vim/pack/plugins/start/
"  from git/tpope
"   	commentary
"   	fugitive
"   	repeat
"   	surround
