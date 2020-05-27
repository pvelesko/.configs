set nocompatible              " be iMproved, required
filetype off                  " required

set errorformat^=%-G%f:%l:\ warning:%m


" Paste over lines without modifying defualt register
xnoremap p pgvy

nnoremap <esc>^[ <esc>^[

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'edkolev/tmuxline.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'davidhalter/jedi-vim.git'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline.git'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'eregex.vim'
"Plugin 'fortran.vim'
"Plugin 'jiangmiao/auto-pairs.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set textwidth=0 wrapmargin=0
let b:fortran_fixed_source=0

" Tab Completion bash like
set wildmode=longest,list,full
set wildmenu

nnoremap <Esc> <BS>
nnoremap ; :
"remap the : key for quick command line
syntax on
"set hidden
set foldcolumn=6 "set the gutter width to see more fold layers"
"allows me to start editing new files without saving channges to the current
set autoindent "autoindent to save time
set number "show line numbers
set copyindent "will use exact same characters for indentation as original
"instead of making an equivalent copy using tabs and spaces
set ignorecase "ignore case sensitivity when searching
set smartcase  "ignore case if all lowercase, otherwise do not ignore
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
"set smarttab      " insert tabs on the start of a line according to
"                  "    shiftwidth, not tabstop
set nobackup
set noswapfile "no auto swap file
nnoremap <Space> za
" Enable FOLDING
set foldmethod=syntax
let fortran_fold=1
"set mouse=a

" set my colorscheme
colorscheme SlateDark
"colorscheme desert
"colorscheme darkblue
" write a scripts to engage paste mode while Im holding down ctrl and alt
"
" copy and paste
vmap <C-c> "+yi

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let python_highlight_all=1

filetype plugin indent on
" show existing tab with 4 spaces width
 set tabstop=2
" " when indenting with '>', use 4 spaces width
 set shiftwidth=2
" " On pressing tab, insert 4 spaces
 set expandtab

autocmd BufEnter *.tpp :setlocal filetype=cpp
