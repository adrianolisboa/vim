set nocompatible
set runtimepath+=~/.vim/bundle/Vundle.vim

" Enable filetype plugins
filetype plugin indent on

call vundle#begin()
 
syntax enable

" Theme
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

" Turn Off Swap Files 
set noswapfile
set nobackup
set nowb

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
set visualbell      " No sounds
set number 
set relativenumber

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

" Buffergator custom configurations
let g:buffergator_viewport_split_policy = 'R' " Use menu at the right side of the screen
let g:buffergator_suppress_keymaps = 1 "Add my own keymaps
nmap <leader>bp :BuffergatorMruCyclePrev<cr> " Go to the previous buffer open
nmap <leader>bn :BuffergatorMruCycleNext<cr> " Go to the next buffer open
nmap <leader>bl :BuffergatorOpen<cr> " View the entire list of buffers open

" Cool Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim' "Powerful fuzzy finder
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline' "Beautiful statusbar
Plugin 'jeetsukumaran/vim-buffergator' "Easy way to deal with buffers

" Git
Plugin 'tpope/vim-fugitive'

" Visuals
Plugin 'altercation/vim-colors-solarized'

" Change Habits 
Plugin 'wikitopian/hardmode'

call vundle#end()
