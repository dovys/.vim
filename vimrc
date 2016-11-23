execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4
colorscheme Tomorrow-Night-Bright

let mapleader = "," " Remapping leader key from \ to ,
let $BASH_ENV = "~/.bash_aliases"

" Auto switch directory to the current file dir
autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
" ,r to :GoRun, ,t to :GoTest
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)

au BufNewFile,BufRead *.json setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.go setlocal expandtab ts=4 sw=4 sts=4

set autowrite " Auto write before :make
set autoread " Auto load the newest file version
set number " Line numbers
set ttyfast " Faster scrolling
set noerrorbells
set noswapfile
set nobackup 
set encoding=utf-8

set incsearch " Search while typing
set hlsearch " Search highligting
set ignorecase " Case insensitive search
set smartcase " Unless you have uppercase characters
set ttimeoutlen=50 " faster timeout for escape key and others

" nmap - normal mode map, imap - insert mode map
nnoremap Y y$
nmap :Vs :vs
nmap :Sp :sp
nmap :W :w
nmap s :%s/
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
nmap <leader>w :w!<cr> 
nmap <leader>p <C-w>z
nmap <leader>i :GoImports<cr>
nmap qq :q<cr>
imap qq <Esc>

" Don't store those pesky files
let g:netrw_dirhistmax=0

" Enable mouse
if has('mouse')
	set mouse=a
endif

" Enable autocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#auto_completion_start_length = 2

" Disable autocomplete preview screen
set completeopt-=preview

autocmd VimEnter * NERDTree
