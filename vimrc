set nocompatible

" Enable filetype plugins
filetype plugin indent on
runtime macros/matchit.vim

" Map Leader key
let mapleader=" "

" Theme
set background=dark
colorscheme solarized

" Turn Off Swap Files
set noswapfile
set nobackup
set nowb

" General configurations
set wildmenu		    " Turn on the Wild menu
set ruler       	    " Always show current position
set ignorecase  	    " Ignore case when searching
set smartcase   	    " When searching try to be smart about cases
set hlsearch   		    " Highlight search results
set incsearch   	    " Search as characters are entered
set lazyredraw  	    " Don't redraw while executing macros (good performance config)
set magic       	    " For regular expressions turn magic on
set expandtab   	    " Use spaces instead of tabs
set autoread            " Set to auto read when a file is changed from the outside
set smarttab    	    " Be smart when using tabs ;)
set shiftwidth=4	    " 1 tab == 4 spaces
set tabstop=4		    " 1 tab == 4 spaces
set laststatus=2        " Always show the status line
set clipboard=unnamed   " use the system clipboard for copy and paste
set visualbell          " No sounds
set number              " Show line numbers
set relativenumber      " Show relative line numbers
set shell=/bin/bash     " Define default shell as bash
set splitright          " Make the new window appear on the right

" Ignore compiled files
set wildignore+=*.o,*.obj,.git,tmp/**,build/**,coverage/**,node_modules/**
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Split panel custom mapping
nmap <leader>sv :vsp<cr> " Split panel in vertical
nmap <leader>sh :sp<cr> " Split panel in horizontal

" turn off search highlight
nnoremap <leader>nohl :nohlsearch<cr>

" Ident json using python
nnoremap <leader>jl :%!python -m json.tool<cr>

" Buffer configurations
nnoremap <leader>bl :buffers<cr>:b<space>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bd :bd<cr>

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Remove Arrow Keys
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

" Auto download plug plugin manager if it doesnt exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugin definitions and configurations
source ~/.vim/plugins.vim
