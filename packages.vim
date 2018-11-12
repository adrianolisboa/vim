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
    call minpac#add('kana/vim-textobj-user') " Dependency for nelstrom/vim-textobj-rubyblock

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
    call minpac#add('editorconfig/editorconfig-vim') " Loads configurations from .editorconfig file

    " Ruby
    call minpac#add('tpope/vim-rails')
    call minpac#add('tpope/vim-rake')
    call minpac#add('vim-ruby/vim-ruby') " Plugin for editing and compiling Ruby
    call minpac#add('tpope/vim-bundler') " Enable use of Bundler inside vim
    call minpac#add('ecomba/vim-ruby-refactoring') " Ruby Refactoring Tool
    call minpac#add('thoughtbot/vim-rspec') " Allow to run rspec from vim
    call minpac#add('nelstrom/vim-textobj-rubyblock') " Custom text object for selecting ruby blocks.

    " Javascript
    call minpac#add('pangloss/vim-javascript')
    call minpac#add('mxw/vim-jsx') " Syntax highlighting and indenting for JSX
    call minpac#add('leshill/vim-json') " Improves the syntax highlighing for JSON files
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
autocmd Filetype json let g:indentLine_setConceal = 0
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

" EditorConfig Configurations
let g:EditorConfig_exclude_patterns = ['fugitive://.*'] " plugin works well with Tim Pope's fugitive plugin
let g:EditorConfig_exclude_patterns = ['scp://.*'] " avoid loading EditorConfig for any remote files over ssh

" Vim Javascript Configurations
let g:javascript_plugin_jsdoc = 1 " Syntax highlighting for http://usejsdoc.org
let g:javascript_plugin_flow = 1 " Syntax highlighting for https://flowtype.org
let g:javascript_plugin_ngdoc = 1 " Syntax highlighting for NGDocs

" Vim JSX Configurations
let g:jsx_ext_required = 1 " Enable syntax highlighting only for JSX files

" Vim RSPEC Configurations
let g:rspec_command = "!bundle exec rspec --drb {spec}" " Make the plugin run this command by default
let g:rspec_runner = "os_x_iterm" " This will run the specs in the last session of the current terminal.
map <Leader>rc :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>

" Minpac commands
command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
