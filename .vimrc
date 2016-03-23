execute pathogen#infect()

" Theme Settings
set nocompatible
set t_Co=16
syntax on
set background=dark
let g:solarized_visibility = "low"
colorscheme solarized

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme = 'powerlineish'

filetype plugin indent on

set fileformat=unix
set encoding=utf-8

set laststatus=2  	"Display status line
set hidden 			"Allow buffer switching without saving

set number			"Display line number
set relativenumber
set showmatch

set ignorecase		"Ignore case when searching
set smartcase		"Ignore case if search pattern is all lowercase
						"	case-sensitive otherwise
set hlsearch		"Highlight search terms
set incsearch		"Show search matches as you type

set cursorline		"Highlights current line

set splitbelow
set splitright

set list
set lcs=tab:▸\ ,eol:¬

set timeoutlen=200 ttimeoutlen=0

" Tabulation Settings
set smarttab
set shiftwidth=3 tabstop=3 softtabstop=3 noexpandtab
set ai				"Auto indent
set si				"Smart indent
set wrap
set breakindent
set backspace=indent,eol,start "Allow backspacing over everything in insert mode
set mouse=a

" Key mapping
let mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap ; :
nnoremap j gj
nnoremap k gk
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nnoremap hh <NOP>
nnoremap jj <NOP>
nnoremap kk <NOP>
nnoremap ll <NOP>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
inoremap jk <ESC>
inoremap kj <ESC>
nmap <leader>/ T><space>gc$
nmap <leader>n :NERDTree<cr>
nnoremap <leader>1 :b1<CR>
nnoremap <leader>2 :b2<CR>
nnoremap <leader>3 :b3<CR>
nnoremap <leader>4 :b4<CR>
nnoremap <leader>5 :b5<CR>
nnoremap <leader>6 :b6<CR>
nnoremap <leader>7 :b7<CR>
nnoremap <leader>8 :b8<CR>
nnoremap <leader>9 :b9<CR>
nnoremap <leader>10 :b10<CR>

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" Google Search
function! Google()
	call inputsave()
	let searchterm = input('Google:')
	call inputrestore()
	return searchterm
endfunction
map <leader>g <ESC>:!/usr/bin/google-chrome-stable 'http://www.google.com/search?q=<C-R>=Google()<CR>'<CR><CR>
