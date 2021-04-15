set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
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
syntax on
vnoremap < <gv
vnoremap > >gv
colo jellybeans

" Plugins
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'https://github.com/tpope/vim-pathogen'
Plugin 'https://github.com/scrooloose/syntastic'
Plugin 'https://github.com/vim-scripts/Greplace.vim'
Plugin 'jacoborus/tender'
Plugin 'bling/vim-airline'
Plugin 'vim-scripts/taglist.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'msanders/snipmate.vim.git'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Chiel92/vim-autoformat'
Plugin 'https://github.com/Yggdroot/indentLine'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Auto commands

execute pathogen#infect()
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd BufWritePre * :%s/\s\+$//e
autocmd QuickFixCmdPost *grep* cwindow
let g:syntastic_enable_perl_checker = 1
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_phpcs_args = "--standard=zend -n --report=csv"
let g:indent_guides_auto_colors = 1
let g:netrw_liststyle = 3 "Tree format
let g:netrw_banner = 0 "No banners
let g:netrw_browse_split = 3 "Opened files on new tab
let g:netrw_winsize = 25

"Indentline config
let g:indentLine_color_term = 239
let g:indentLine_char = '|'

" KeyMap
map <C-L> :TlistToggle<CR>
