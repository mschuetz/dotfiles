if has('gui_running') 
	colorscheme solarized
	if has('gui_gtk2')
		set guifont=Ubuntu\ Mono\ 9
	endif
endif

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab "
set autoindent

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

" line numbers
set number

" completion menu
set wildmenu

set laststatus=2

set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ %h\ \ \ Line:\ %l/%L:%c

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction

" browser-style tab switching
map <C-tab> :tabnext<CR>
map <C-S-tab> :tabprevious<CR>
