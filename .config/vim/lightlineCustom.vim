set laststatus=2    " Initiate the statusline

set showcmd	    " Show current cmd
set shortmess-=S    " Show total matched search
set noshowmode	    " Don't show mode in bottom line

function! FormatShort()
    return winwidth(0) > 80 ? &fileformat : ''
endfunction

function! EncodeShort()
    return winwidth(0) > 60 ? &fileencoding : ''
endfunction

function! LineShort()
    return winwidth(0) > 40 ? &lineinfo : '[%L]'
endfunction

function! TypeShort()
    return winwidth(0) > 35 ? (&filetype !=# '' ? &filetype : '-') : ''
endfunction

let g:lightline = {
    \	'colorscheme': 'nasaKAT',
    \	'active': {
    \	    'left' :[ [ 'mode', 'paste' ],
    \		      [ 'gitbranch', 'filestat' ] ],
    \	    'right':[ [ 'bufnum' ], [ 'ruler' ],
    \		      [ 'fileformat', 'fileencoding', 'filetype' ] ]
    \	},
    \	'component_function': {
    \	    'gitbranch'   : 'FugitiveHead',
    \	    'fileformat'  : 'FormatShort',
    \	    'filetype'    : 'TypeShort',
    \	    'fileencoding': 'EncodeShort',
    \	},
    \	'component': {
    \	    'ruler': '%2l,%2c [%L]'
    \	},
    \}
