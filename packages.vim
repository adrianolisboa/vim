if exists('*minpac#init')
    call minpac#init()
    call minpac#add('k-takata/minpac', {'type': 'opt'})

    " Cool Plugins
    call minpac#add('scrooloose/nerdtree')
    call minpac#add('ctrlpvim/ctrlp.vim') "Powerful fuzzy finder
    call minpac#add('vim-syntastic/syntastic')
    call minpac#add('vim-airline/vim-airline') "Beautiful statusbar
    call minpac#add('jeetsukumaran/vim-buffergator') "Easy way to deal with buffers

    " Git
    call minpac#add('tpope/vim-fugitive')

    " Visuals
    call minpac#add('altercation/vim-colors-solarized')

    " Change Habits 
    call minpac#add('wikitopian/hardmode')
endif

" Buffergator Configurations
let g:buffergator_viewport_split_policy = 'R' " Use menu at the right side of the screen
let g:buffergator_suppress_keymaps = 1 "Add my own keymaps
nmap <leader>bp :BuffergatorMruCyclePrev<cr> " Go to the previous buffer open
nmap <leader>bn :BuffergatorMruCycleNext<cr> " Go to the next buffer open
nmap <leader>bl :BuffergatorOpen<cr> " View the entire list of buffers open

" Minpac commands
command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()