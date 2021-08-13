call plug#begin(stdpath('data') . '/plugged')

Plug 'nanotech/jellybeans.vim'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-buftabline'

Plug 'equalsraf/neovim-gui-shim'

Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'jackguo380/vim-lsp-cxx-highlight'

Plug 'lervag/vimtex'

call plug#end()

colorscheme jellybeans

set hidden
set termguicolors
set number
set relativenumber

set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab
set nowrap
set colorcolumn=80

let g:buftabline_show=2
let g:vimtex_view_general_viewer = 'evince'

nnoremap <space> <nop>
let mapleader=" "
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

