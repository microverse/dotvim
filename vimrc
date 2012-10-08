call pathogen#infect()

set tabstop=4
set softtabstop=4
set shiftwidth=4

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

set backspace=indent,eol,start

set ignorecase
set smartcase

set hlsearch

set colorcolumn=80

" Move through windows easier
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc
