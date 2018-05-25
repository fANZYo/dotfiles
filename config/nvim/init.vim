set nocompatible

execute pathogen#infect()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" Theme Settings
set t_Co=256
" set termguicolors
syntax on
set background=dark
" let g:solarized_visibility = "low"
colorscheme monokai2
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme = 'powerlineish'

let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CrtlP'
nmap <C-p> :CtrlP<CR>
let g:ctrlp_working_path_mode = '0'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

hi spellBad none
hi spellCap none

let g:jsx_ext_required = 0

filetype plugin indent on

au FocusLost * :wa "auto save on focus loss

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
set lcs=tab:│\ ,eol:¬

set timeoutlen=333 ttimeoutlen=0

" Tabulation Settings
set smarttab
set shiftwidth=3 tabstop=3 softtabstop=3 noexpandtab
set ai				"Auto indent
set si				"Smart indent
set wrap
set breakindent
set backspace=indent,eol,start "Allow backspacing over everything in insert mode
set mouse=a

set autoread
au CursorHold * checktime

" Key mapping
let mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap ; :
map <leader>s :%s//gI<left><left><left>
map <leader>S :%s/<C-r><C-w>//gI<Left><Left><Left>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
inoremap jk <ESC>
inoremap kj <ESC>
nmap <leader>/ T><space>gc$
nmap <leader>; A;
nmap <leader>n :NERDTree<CR>
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

"Clear search hl
nnoremap <CR> :noh<CR>

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" Ale Linter
let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_enter = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
" let g:ale_keep_list_window_open = 1
