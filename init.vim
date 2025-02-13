set nocompatible              " be iMproved, required
filetype off                  " required

" alternatively, pass a path where Vundle should install plugins
" Basic editor configurations
set number
set numberwidth=5
set cpoptions+=n
set modeline
set ls=2
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set smartcase
set clipboard=unnamedplus
set ignorecase
set tags=~/.tags/php.tags
set incsearch
set wildmode=longest,list,full
let $LANG = 'en_US'
syntax on
vnoremap < <gv
vnoremap > >gv
colo jellybeans


call plug#begin()
Plug 'https://github.com/VonHeikemen/lsp-zero.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'junegunn/vim-easy-align'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-pack/nvim-spectre'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ray-x/guihua.lua', {'do': 'cd lua/fzy && make' }
Plug 'ray-x/navigator.lua'
call plug#end()

lua <<EOF
    require 'lua/init'
EOF
