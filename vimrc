set nocompatible

" Enable filetype plugins
filetype plugin indent on
runtime macros/matchit.vim

" Map Leader key
let mapleader=" "

" Theme
syntax enable       " enable syntax processing
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
nnoremap <leader>scl :nohlsearch<cr>

" Loads minpac and packages 
source ~/.vim/packages.vim
