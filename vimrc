call pathogen#infect()

set ts=4

if &compatible
    set nocompatible
endif

set number
syntax enable
set autoindent

set background=dark
colorscheme molokai

filetype plugin on

" NERDTree
let g:NERDTreeDirArrows=0
map <F2> :NERDTreeToggle<CR>

" EasyMotion
let g:EasyMotion_leader_key = '<Leader>' 

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

set expandtab
set smarttab

set backspace=2

set ignorecase
set smartcase

set hlsearch

set colorcolumn=80

set mouse=a
