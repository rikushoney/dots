call plug#begin(stdpath('data') . '/plugged')

Plug 'nanotech/jellybeans.vim'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-buftabline'

Plug 'equalsraf/neovim-gui-shim'

Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'jackguo380/vim-lsp-cxx-highlight'

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

let g:buftabline_show=2

nnoremap <space> <nop>
let mapleader=" "
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>
