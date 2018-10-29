if exists('*minpac#init')
    call minpac#init()
    call minpac#add('k-takata/minpac', {'type': 'opt'})

    " Cool Plugins
    call minpac#add('scrooloose/nerdtree')
    call minpac#add('ctrlpvim/ctrlp.vim') "Powerful fuzzy finder
    call minpac#add('vim-syntastic/syntastic')
    call minpac#add('vim-airline/vim-airline') "Beautiful statusbar
    call minpac#add('jeetsukumaran/vim-buffergator') "Easy way to deal with buffers
    call minpac#add('brookhong/ag.vim') " The silver searcher vim plugin
    call minpac#add('tpope/vim-surround') " Surround everything (cs command)
    call minpac#add('brooth/far.vim') " Find And Replace

    " Git
    call minpac#add('tpope/vim-fugitive')

    " Visuals
    call minpac#add('altercation/vim-colors-solarized')
    call minpac#add('Yggdroot/indentLine')
    call minpac#add('junegunn/goyo.vim')

    " Change Habits 
    call minpac#add('wikitopian/hardmode')
    
    " Development
    call minpac#add('ervandew/supertab') " Complete most used words with tab
    call minpac#add('tpope/vim-endwise') " Helps to end certain structures automatically

    " Ruby
    call minpac#add('tpope/vim-rails')
    call minpac#add('tpope/vim-rake')
    call minpac#add('vim-ruby/vim-ruby') " Plugin for editing and compiling Ruby
    call minpac#add('tpope/vim-bundler') " Enable use of Bundler inside vim
    call minpac#add('ecomba/vim-ruby-refactoring') " Ruby Refactoring Tool
endif

" Buffergator Configurations
let g:buffergator_viewport_split_policy = 'R' " Use menu at the right side of the screen
let g:buffergator_suppress_keymaps = 1 "Add my own keymaps
nmap <leader>bp :BuffergatorMruCyclePrev<cr> " Go to the previous buffer open
nmap <leader>bn :BuffergatorMruCycleNext<cr> " Go to the next buffer open
nmap <leader>bl :BuffergatorOpen<cr> " View the entire list of buffers open

" NERDTree Configurations
let NERDTreeShowHidden=1
nmap <leader>nt :NERDTreeToggle<cr> " Open NERDTree

" IdentLine Configurations
let g:indentLine_char = '┆'

" Airline Configurations
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename

" Syntastic Configurations
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
nmap <leader>st :SyntasticToggleMode<cr> " Enable and disable syntastic
nmap <leader>sc :SyntasticCheck<cr> " Check syntax

" Minpac commands
command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
