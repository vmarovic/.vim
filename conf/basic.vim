" Searching {{{2
set ignorecase
set smartcase
set showmatch
set incsearch

 "Syntastic {{{3
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Make statusline update faster: {{{3
set ttimeoutlen=50

" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

let g:http_client_result_vsplit = 0 " Output http req output in split instead of vertical window

" Checkers
let g:syntastic_javascript_checkers = []

set mouse=nvi
set mousemodel=popup
set lazyredraw
set scrolloff=2
set sidescrolloff=5
set ttimeoutlen=50  " Make Esc work faster
set wildmenu
set textwidth=120

let tern#is_show_argument_hints_enabled = 1

" Ignore some filetypes.
set wildignore+=**.map,*/vendor/*,*/img/*,*/private/*,*/photos/*,*/public/*,*/.git/*,*/.tmp/*,*/bower_components/*

" Make copy/paste work between windows.
set clipboard=unnamedplus

" CtrlP settings{{{3
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode=0
let g:ctrlp_custom_ignore = 'node_modules'

" Use ag for greping by default
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

" Open qfix after ag
augroup qfix
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost    l* lwindow
augroup END

" MySql profile for accessing aggora TODO: Make this project specific
let g:dbext_default_profile_mySQL='type=MYSQL:user=vladimir:passwd=123:dbname=agora:host=192.168.1.14'
autocmd BufRead * DBSetOption profile=mySQL

