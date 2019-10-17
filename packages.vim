if exists('*minpac#init')
    call minpac#init()
    call minpac#add('k-takata/minpac', {'type': 'opt'})

    " Cool Plugins
    call minpac#add('scrooloose/nerdtree')
    call minpac#add('scrooloose/nerdcommenter') " Comment functions
    call minpac#add('xuyuanp/nerdtree-git-plugin') " Show git file statuses at nerdtree
    call minpac#add('ctrlpvim/ctrlp.vim') "Powerful fuzzy finder
    call minpac#add('vim-syntastic/syntastic')
    call minpac#add('vim-airline/vim-airline') " Beautiful statusbar
    call minpac#add('vim-airline/vim-airline-themes') " Themes for vim-airline
    "call minpac#add('jeetsukumaran/vim-buffergator') "Easy way to deal with buffers
    call minpac#add('brookhong/ag.vim') " The silver searcher vim plugin
    call minpac#add('tpope/vim-surround') " Surround everything (cs command)
    call minpac#add('brooth/far.vim') " Find And Replace
    call minpac#add('tpope/vim-fugitive') " Git wrapper for VIM
    call minpac#add('christoomey/vim-titlecase') " Adds a new operator for titlecasing text (gt)
    call minpac#add('rizzatti/dash.vim') " Add support for searching documentations using dash
    call minpac#add('godlygeek/tabular') " Use Tab or Tabularize to automatically ident selected lines

    " Text objects
    call minpac#add('kana/vim-textobj-user') " Used for creating your own textobjects
    "call minpac#add('nelstrom/vim-textobj-rubyblock') " Custom text object for selecting ruby blocks.
    call minpac#add('kana/vim-textobj-function') " Text objects for functions

    " Visuals
    call minpac#add('altercation/vim-colors-solarized')
    call minpac#add('Yggdroot/indentLine')
    call minpac#add('junegunn/goyo.vim') " Distraction-free writing in Vim.

    " Change Habits 
    "call minpac#add('takac/vim-hardtime')
    
    " Development
    call minpac#add('ervandew/supertab') " Complete most used words with tab
    call minpac#add('tpope/vim-endwise') " Helps to end certain structures automatically
    call minpac#add('editorconfig/editorconfig-vim') " Loads configurations from .editorconfig file
    call minpac#add('janko-m/vim-test') " Wrapper for running tests
    call minpac#add('sheerun/vim-polyglot') " A collection of language packs for Vim.
    "call minpac#add('zxqfl/tabnine-vim') " Smart Compose for code.

    " Ruby
    call minpac#add('vim-ruby/vim-ruby') " Plugin for editing and compiling Ruby
    "call minpac#add('tpope/vim-rails')
    "call minpac#add('tpope/vim-rake')
    "call minpac#add('tpope/vim-bundler') " Enable use of Bundler inside vim
    "call minpac#add('thoughtbot/vim-rspec') " Allow to run rspec from vim
    "call minpac#add('ecomba/vim-ruby-refactoring') " Ruby Refactoring Tool
    "call minpac#add('astashov/vim-ruby-debugger') " Interactive Ruby debugger

    " Javascript
    call minpac#add('pangloss/vim-javascript')
    call minpac#add('mxw/vim-jsx') " Syntax highlighting and indenting for JSX
    call minpac#add('leshill/vim-json') " Improves the syntax highlighing for JSON files

    " Flutter
    call minpac#add('dart-lang/dart-vim-plugin') " Provides filetype detection, syntax highlighting, and indentation for Dart.
    call minpac#add('thosakwe/vim-flutter') " Vim commands for Flutter, including hot-reload-on-save and more.

    " Elixir
    call minpac#add('elixir-editors/vim-elixir') " Syntax highlighting, Filetype detection, Automatic indentation
    call minpac#add('mhinz/vim-mix-format') " Run mix formatter asynchronously (:MixFormat, :verb MixFormat, :MixFormatDiff)
    call minpac#add('slashmili/alchemist.vim') " Completion for Modules and functions, and much more...
    call minpac#add('neomake/neomake') " Execute code checks to find mistakes in the currently edited file
    "call minpac#add('c-brenn/phoenix.vim') "
    "call minpac#add('tpope/vim-projectionist') "
endif

" Ctrlp Configurations
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' " Ignore listed directories when using ctrlp

" Open Buffer Search
nmap <leader>bs :CtrlPBuffer<cr>

" Buffergator Configurations
"let g:buffergator_viewport_split_policy = 'R' " Use menu at the right side of the screen
"let g:buffergator_suppress_keymaps = 1 "Add my own keymaps
"nmap <leader>bp :BuffergatorMruCyclePrev<cr> " Go to the previous buffer open
"nmap <leader>bn :BuffergatorMruCycleNext<cr> " Go to the next buffer open
"nmap <leader>bl :BuffergatorOpen<cr> " View the entire list of buffers open

" NERDTree Configurations
let NERDTreeShowHidden=1
let g:NERDTreeNodeDelimiter = "\u00a0"
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
"let g:rspec_command = "!bundle exec rspec --drb {spec}" " Make the plugin run this command by default
"let g:rspec_runner = "os_x_iterm" " This will run the specs in the last session of the current terminal.
"map <Leader>rc :call RunCurrentSpecFile()<CR>
"map <Leader>rs :call RunNearestSpec()<CR>
"map <Leader>rl :call RunLastSpec()<CR>
"map <Leader>ra :call RunAllSpecs()<CR>

" Hardtime Configurations
let g:hardtime_default_on = 1 " Enabled by default
let g:hardtime_showmsg = 1 " Show messages
let g:hardtime_maxcount = 2 " Allow to press the key max of 2 times
let g:hardtime_ignore_buffer_patterns = [ "CustomPatt[ae]rn", "NERD.*", "Buffergator*" ] " Disable it for nerdtree
let g:list_of_disabled_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
nnoremap <leader>ht <Esc>:call HardTimeToggle()<CR>

" Vim Fugitive Configurations
nmap <leader>gb :Gblame<cr> " Git blame
nmap <leader>gs :Gstatus<cr> " Git status
nmap <leader>gc :if confirm('Revert file to original status?', "&Yes\n&No", 1)==1 <Bar> :execute ":Git checkout %" <Bar> endif<CR><CR> " Ask for confirmation, then checkout modifications

" Vim Test Configurations
nmap <leader>tn :TestNearest<CR>
nmap <leader>tf :TestFile<CR>
nmap <leader>ts :TestSuite<CR>
nmap <leader>tl :TestLast<CR>
nmap <leader>tv :TestVisit<CR>

" The Silver Searcher Configurations
nmap <leader>a :Ag 

" Ruby Refactoring Plugin Configurations
"nnoremap <leader>rap  :RAddParameter<cr>
"nnoremap <leader>rcpc :RConvertPostConditional<cr>
"nnoremap <leader>rel  :RExtractLet<cr>
"vnoremap <leader>rec  :RExtractConstant<cr>
"vnoremap <leader>relv :RExtractLocalVariable<cr>
"nnoremap <leader>rit  :RInlineTemp<cr>
"vnoremap <leader>rrlv :RRenameLocalVariable<cr>
"vnoremap <leader>rriv :RRenameInstanceVariable<cr>
"vnoremap <leader>rem  :RExtractMethod<cr>

" Vim Flutter Configurations
nnoremap <leader>df :DartFmt<cr>
nnoremap <leader>flr :FlutterRun<cr>
nnoremap <leader>flq :FlutterQuit<cr>
nnoremap <leader>flr :FlutterHotReload<cr>
nnoremap <leader>flrr :FlutterHotRestart<cr>
nnoremap <leader>fld :FlutterVisualDebug<cr>
nnoremap <leader>flem :FlutterEmulators<cr>
nnoremap <leader>fleml :FlutterEmulatorsLaunch<cr>
nnoremap <leader>fldv :FlutterDevices<cr>

" Vim Mix Format Configurations
" let g:mix_format_on_save = 1
nnoremap <leader>mf :MixFormat<cr>
nnoremap <leader>mfv :verb MixFormat<cr>
nnoremap <leader>mfd :MixFormatDiff<cr>

" Vim alchemist
let g:alchemist_tag_disable = 1

" Minpac commands
command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
