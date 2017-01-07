" Criss lion amazing vim config :)

set background=dark

set history=700

set nu
set so=5
set ruler
set backspace=eol,start,indent

set ignorecase
set smartcase
set hlsearch
set incsearch

set lazyredraw

syntax enable
set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab

set shiftwidth=2
set tabstop=2

set hidden

set autoindent

set laststatus=2

set lbr
set tw=500

map j gj
map k gk
" Easy buffer change
nnoremap <C-Space> :ls<CR>:b<Space>

if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set guioptions-=m
    set guioptions-=r
    set t_Co=256
    set guitablabel=%M\ %t
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'mxw/vim-jsx'
Plug 'xuyuanp/nerdtree-git-plugin'
call plug#end()

let g:airline_theme='molokai'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

if has("gui_running")
    autocmd vimenter * NERDTree
endif

colorscheme solarized
