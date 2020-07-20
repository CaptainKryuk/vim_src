" setting for vimwiki
let g:vimwiki_list = [{'path':'~/scratchbox/vimwiki/markdown/','ext':'.md','syntax':'markdown'}, {"path":"~/scratchbox/vimwiki/wiki/"}]
let g:zettel_fzf_command = "rg --column --line-number --ignore-case --no-heading --color=always "


"filename format
let g:zettel_format = "%y%m%d-%H%M-%title"

" filesequence format
" let g:zettel_format = "%file_no"


set tabstop=4
set shiftwidth=4
set smarttab
" autochange by default
set et

" wrap long string
set wrap

" autoindents
set ai

" on indent in C style
set cin

" text color
set showmatch
set hlsearch
set incsearch
set ignorecase

" redraw after script
set lz

" tab within points
set listchars=tab:··
set list

" set right encoding
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

" turnoff gui outside gui
if !has('gui_running')
	set mouse=
endif


" turnoff menu and toolbar
set guioptions-=T
set guioptions-=m

" install font
if has('gui')
	colorscheme darkblue
	if has('win32')
		set guifont=Lucida_Console:h12:cRUSSIAN::
	else
		set guifont=Terminus\ 14
	endif
endif

" install full screen
if has('gui')
	if has('win32')
		au GUIEnter * call libcallnr('maximize', 'Maximize', 1)
	elseif has('gui_gtk2')
		au GUIEnter * :set lines=99999 columns=99999
	endif
endif

" assembly in different systems
if has('win32')
	set makeprg=nmake
	compiler msvc
else
	set makeprg=make
	compiler gcc
endif

" settings for vimwiki
set nocompatible
filetype plugin on
syntax on


call plug#begin()
Plug 'rakr/vim-one'
Plug 'vimwiki/vimwiki'
Plug 'preservim/NERDTree'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'michal-h21/vim-zettel'
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
call plug#end()

" colorscheme
colorscheme one
set background=dark
" let g:airline_theme='onehalfdark'
