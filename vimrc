if has('gui_running') 
	colorscheme solarized
endif

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab "

if has("multi_byte")
	set encoding=utf-8
	setglobal fileencoding=utf-8
	set fileencodings=ucs-bom,utf-8,latin1
endif 

set hlsearch
syntax on

" spelling help
cabbrev X x
cabbrev Wq wq
cabbrev W w
cabbrev Q q

" Make Backspace work correctly
set backspace=indent,eol,start

" ignore these files in wildmenu
set wildignore=*.bak,*.o,*.e,*~

" No sound on errors, NEVER
set noerrorbells
set novisualbell
set vb t_vb=

" Show complete menu even when there is only match
set completeopt=menu,preview,menuone

