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

" Prevent vim auto comment on newline
set formatoptions-=r
set formatoptions-=o

hi spellBad none
hi spellCap none

let g:jsx_ext_required = 0

filetype plugin indent on



" Stops vim from acting like vi
set nocompatible

" File settings
set fileformat=unix
set encoding=utf-8

" Disable swap files
set noswapfile

" Display relative line numbers
set number
set relativenumber

" Set vim's path to be recursive
set path+=**

" Enable mouse
set mouse=a

" Set vim's waiting time for mapping sequence
set timeoutlen=333 ttimeoutlen=0

" Auto read changed files on buffer enter
set autoread
au BufWinEnter * checktime

" Handle multiple syntax
au FileType vue syntax sync fromstart

" Display status line
set laststatus=2

" Allow buffer switching without saving
set hidden

" Highlights current line
set cursorline

" Highlight matching brackets
set showmatch

" Search settings
set hlsearch "Highlight search terms
set incsearch "Show search matches as you type
set ignorecase "Ignore case in search
set smartcase "Unless search term contains uppercase chars

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Tabulation Settings
set shiftwidth=3 tabstop=3 softtabstop=3 noexpandtab
set smarttab
set ai " Auto indent
set si " Smart indent

" Wrap line and visually indent them
set wrap
set breakindent

" Set vertical line at the 101 char mark
set colorcolumn=101

" Show vertical line for indents and EOL char
set list
set lcs=tab:│\ ,eol:¬

" Intuitive splits
set splitbelow
set splitright

" Generate tags (requires ctags)
command! MakeTags !ctags --exclude=node_modules -R .


"" MAPPINGS

" Map command mode to :
nnoremap ; :
" Set leader to ,
let mapleader=","
" Open and Save config
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" Clear search hl
nnoremap <CR> :noh<CR>
" NERDTree mapping
nmap <leader>n :NERDTree<CR>
nmap <leader>f :NERDTreeFocus<CR>
" Tmux in vim
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Search and replace
map <leader>s :%s//gI<left><left><left>
" Search and replace word under the cursor
map <leader>S :%s/<C-r><C-w>//gI<Left><Left><Left>
" Ack mapping
nnoremap <leader>a :Ack!<space>
" Ack word under the cursor
nnoremap <leader>A :Ack! <C-r><C-w> 
" Ale mapping
nmap <silent> <leader>en :ALENext<CR>
nmap <silent> <leader>ep :ALEPrevious<CR>

"" PLUGINS

" Ale Linter
let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_set_loclist = 0
let g:ale_open_list = 0

" CommandT
let g:CommandTTraverseSCM = "pwd"
let g:CommandTSmartCase = 1
let g:CommandTWildIgnore = &wildignore . ",*/node_modules"

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
	exec 'autocmd filetype nerdtree highlight '.a:extension.' ctermbg='.a:bg.' ctermfg='.a:fg.' guibg='.a:guibg.' guifg='.a:guifg
	exec 'autocmd filetype nerdtree syn match '.a:extension.' #^\s\+.*'.a:extension.'$#'
endfunction

call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('scss', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('js', 'yellow', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('vue', 'darkcyan', 'none', '#ffa500', '#151515')
