set nocompatible
set runtimepath+=~/.vim/bundle/Vundle.vim

" Enable filetype plugins
filetype plugin indent on

call vundle#begin()
 
" Theme
syntax enable
set background=dark
colorscheme solarized

" General configurations
set wildmenu		" Turn on the WiLd menu
set ruler       	" Always show current po
set ignorecase  	" Ignore case when searching
set smartcase   	" When searching try to be smart about cases
set hlsearch   		" Highlight search results
set incsearch   	" Makes search act like search in modern browsers
set lazyredraw  	" Don't redraw while executing macros (good performance config)
set magic       	" For regular expressions turn magic on
set expandtab   	" Use spaces instead of tabs
set autoread        " Set to auto read when a file is changed from the outside
set smarttab    	" Be smart when using tabs ;)
set shiftwidth=4	" 1 tab == 4 spaces
set tabstop=4		" 1 tab == 4 spaces
set laststatus=2    " Always show the status line
set clipboard=unnamed 
set number          " Turn on line numbers

" Ignore compiled files
set wildignore+=*.o,*.obj,.git,tmp/**,build/**,coverage/**,node_modules/**
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Changing Habits (remove arrow keys)
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

" Vundle Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'wikitopian/hardmode'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'

call vundle#end()
