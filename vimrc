call pathogen#infect()

set tabstop=4
set softtabstop=4
set shiftwidth=4

if &compatible
    set nocompatible
endif

" Have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

set number
map <F12> :set number!<CR>
imap <F12> <c-o>:set number!<CR>

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

" Highlight column if text exceeds over 80 characters
if exists('+colorcolumn')
    highlight ColorColumn ctermbg=red
    call matchadd('ColorColumn', '\%80v', 100)
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

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

" For faster startup of vim don't connect to the X Server
" Clipboard will be disabled as well as the window title
set clipboard=exclude:.*
