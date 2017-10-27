set nocompatible
set runtimepath+=~/.vim/bundle/Vundle.vim

" Enable filetype plugins
filetype plugin indent on
syntax on

call vundle#begin()
 
" Theme
let g:molokai_original = 1
colorscheme molokai
set background=dark

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
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set clipboard=unnamed 

" Ignore compiled files
set wildignore+=*.o,*.obj,.git,tmp/**,build/**,coverage/**,node_modules/**
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Vundle Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()
