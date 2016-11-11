execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4
colorscheme Tomorrow-Night-Bright

let mapleader = "," " Remapping leader key from \ to ,

" Auto switch directory to the current file dir
autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

" ==================== <GoSpecific> =======================
autocmd Filetype go setlocal ts=4 sts=4 sw=4 " 4 space long tab
" ,r to :GoRun, ,t to :GoTest
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)

" ==================== </GoSpecific> =======================

" A lot of things below taken from
" https://github.com/jessfraz/.vim/blob/master/vimrc

set autowrite " Auto write before :make
set autoread " Auto load the newest file version
set number " Line numbers
set mouse=a " Enable mouse
set ttyfast " Faster scrolling
set noerrorbells
set noswapfile
set nobackup 
set encoding=utf-8

set incsearch " Search while typing
set hlsearch " Search highligting
set ignorecase " Case insensitive search
set smartcase " Unless you have uppercase characters

" Force save
nmap <leader>w :w!<cr> 

" Enable autocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1


