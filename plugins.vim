call plug#begin('~/.vim/plugged')
  " Cool Plugins
  Plug 'scrooloose/nerdtree'
  Plug 'xuyuanp/nerdtree-git-plugin' " Show git file statuses at nerdtree
  Plug 'ctrlpvim/ctrlp.vim' "Powerful fuzzy finder
  Plug 'vim-airline/vim-airline' " Beautiful statusbar
  Plug 'vim-airline/vim-airline-themes' " Themes for vim-airline
  Plug 'tpope/vim-fugitive' " Git wrapper for VIM
  Plug 'jceb/vim-orgmode' " OrgMode for Vim
  Plug 'altercation/vim-colors-solarized'
  Plug 'Yggdroot/indentLine'

  " Development
  Plug 'ervandew/supertab' " Complete most used words with tab
  Plug 'editorconfig/editorconfig-vim' " Loads configurations from .editorconfig file
  Plug 'janko-m/vim-test' " Wrapper for running tests
  Plug 'dense-analysis/ale' " Asynchronous Lint Engine
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Javascript
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim' " Syntax file and other settings for TypeScript.

  " Elixir
  Plug 'elixir-editors/vim-elixir' " Syntax highlighting, Filetype detection, Automatic indentation
  Plug 'mhinz/vim-mix-format' " Run mix formatter asynchronously (:MixFormat, :verb MixFormat, :MixFormatDiff)
  Plug 'slashmili/alchemist.vim' " Completion for Modules and functions, and much more...
  Plug 'neomake/neomake' " Execute code checks to find mistakes in the currently edited file

  " Ruby
  "Plug 'vim-ruby/vim-ruby' " Plugin for editing and compiling Ruby
  "Plug 'tpope/vim-rails'
  "Plug 'tpope/vim-rake'
  "Plug 'tpope/vim-bundler' " Enable use of Bundler inside vim
  "Plug 'thoughtbot/vim-rspec' " Allow to run rspec from vim
  "Plug 'ecomba/vim-ruby-refactoring' " Ruby Refactoring Tool
  "Plug 'astashov/vim-ruby-debugger' " Interactive Ruby debugger

  " Flutter
  "Plug 'dart-lang/dart-vim-plugin' " Provides filetype detection, syntax highlighting, and indentation for Dart.
  "Plug 'thosakwe/vim-flutter' " Vim commands for Flutter, including hot-reload-on-save and more.
  "Plug 'natebosch/vim-lsc-dart' "
call plug#end()

" Ctrlp Configurations
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' " Ignore listed directories when using ctrlp

" Open Buffer Search
nmap <leader>bs :CtrlPBuffer<cr>

" NERDTree Configurations
let NERDTreeShowHidden=1
let g:NERDTreeNodeDelimiter = "\u00a0"
nmap <leader>nt :NERDTreeToggle<cr> " Open NERDTree

" Airline Configurations
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename

" EditorConfig Configurations
let g:EditorConfig_exclude_patterns = ['fugitive://.*'] " plugin works well with Tim Pope's fugitive plugin
let g:EditorConfig_exclude_patterns = ['scp://.*'] " avoid loading EditorConfig for any remote files over ssh

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

" Vim Javascript Configurations
let g:javascript_plugin_jsdoc = 1 " Syntax highlighting for http://usejsdoc.org
let g:javascript_plugin_flow = 1 " Syntax highlighting for https://flowtype.org
let g:javascript_plugin_ngdoc = 1 " Syntax highlighting for NGDocs

" Vim RSPEC Configurations
"let g:rspec_command = "!bundle exec rspec --drb {spec}" " Make the plugin run this command by default
"let g:rspec_runner = "os_x_iterm" " This will run the specs in the last session of the current terminal.
"map <Leader>rc :call RunCurrentSpecFile()<CR>
"map <Leader>rs :call RunNearestSpec()<CR>
"map <Leader>rl :call RunLastSpec()<CR>
"map <Leader>ra :call RunAllSpecs()<CR>

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
"nnoremap <leader>df :DartFmt<cr>
"nnoremap <leader>flr :FlutterRun<cr>
"nnoremap <leader>flq :FlutterQuit<cr>
"nnoremap <leader>flh :FlutterHotReload<cr>
"nnoremap <leader>flhr :FlutterHotRestart<cr>
"nnoremap <leader>fld :FlutterVisualDebug<cr>
"nnoremap <leader>flem :FlutterEmulators<cr>
"nnoremap <leader>fldv :FlutterDevices<cr>

" Vim Mix Format Configurations
nnoremap <leader>mf :MixFormat<cr>
nnoremap <leader>mfv :verb MixFormat<cr>
nnoremap <leader>mfd :MixFormatDiff<cr>

" Vim alchemist
let g:alchemist_tag_disable = 1

" Vim ALE
nnoremap <leader>jf :ALEFix<cr>
nnoremap <leader>jfp :ALEFix pretter<cr>
nnoremap <leader>jfl :ALEFix eslint<cr>
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fixers = ['prettier', 'eslint']
let g:ale_fix_on_save = 1

" COC LSP
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> dp <Plug>(coc-diagnostic-prev)
nmap <silent> dn <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
