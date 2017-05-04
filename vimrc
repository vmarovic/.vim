autocmd! BufWritePost vimrc :so $MYVIMRC

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Core
Plugin 'VundleVim/Vundle.vim'            " Vundle package manager
Plugin 'tpope/vim-fugitive'              " Git integration
Plugin 'kien/ctrlp.vim'                  " CtrlP - fuzzy finder
Plugin 'bling/vim-airline'               " airline
Plugin 'tpope/vim-surround'              " Surround
Plugin 'scrooloose/nerdcommenter'        " neerd commenter
Plugin 'scrooloose/nerdtree'             " neerdtree
Plugin 'sjl/gundo.vim'                   " gundo
Plugin 'jlanzarotta/bufexplorer'
Plugin 'godlygeek/tabular'               " tabular - align code
Plugin 'SirVer/ultisnips'                " Ultisnips
Plugin 'majutsushi/tagbar'               " Tagbar
Plugin 'tpope/vim-repeat'
Plugin 'chiedo/vim-case-convert'
Plugin 'mileszs/ack.vim'
Plugin 'freitass/todo.txt-vim'

" Utility
Plugin 'mattn/emmet-vim'
Plugin 'https://github.com/w0rp/ale.git'
Plugin 'ternjs/tern_for_vim'             " Ternjs
Plugin 'vim-scripts/dbext.vim'           " Query SQL
Plugin 'aquach/vim-http-client'          " Make http requests
Plugin 'skywind3000/asyncrun.vim'

"Syntax
Plugin 'neo4j-contrib/cypher-vim-syntax'
Plugin 'groenewege/vim-less'
"Plugin 'isRuslan/vim-es6'                " ES6 syntax
Plugin 'moll/vim-node'                    " Vim node goodies
Plugin 'pangloss/vim-javascript'
Plugin 'metakirby5/codi.vim'
Plugin 'mxw/vim-jsx'

"Plugin 'flazz/vim-colorschemes'          " Collection of color schemes
"Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'

call vundle#end()
filetype plugin indent on

syntax on
set nocompatible

let g:ale_linters = {'javascript': ['eslint']}
let g:ale_javascript_eslint_use_global=1
let g:ale_sign_column_always = 1
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']

so ~/.vim/conf/basic.vim
so ~/.vim/conf/view.vim
so ~/.vim/conf/edit.vim
so ~/.vim/conf/keys.vim
so ~/.vim/conf/sql.vim


nnoremap <leader>vf ?function<cr>$V%


nnoremap <c-Down> :cn<cr>
nnoremap <c-Up> :cp<cr>

nnoremap <leader>_ :CamelToSnake!<cr>
nnoremap <leader>r :redraw!<cr>

cnoreabbrev db DBExecSQL
cnoreabbrev dbr DBExecRangeSQL

let g:ackprg = 'ag --vimgrep'
let g:jsx_ext_required = 0

nnoremap <leader>{ F{af}ivi}:s/,/,\r/gvi}=

nnoremap <leader>1 1<c-w><c-w>
nnoremap <leader>2 2<c-w><c-w>
nnoremap <leader>3 3<c-w><c-w>

nnoremap <leader>f: :Tabularize /:\zs<cr>
vnoremap <leader>f: :Tabularize /:\zs<cr>

function! SetWidth2()
  set tabstop=2     " A tab is 4 spaces
  set softtabstop=2 " Insert 4 spaces when tab is pressed
  set shiftwidth=2  " An indent is 4 spaces
endfunction

function! SetWidth4()
  set tabstop=4     " A tab is 4 spaces
  set softtabstop=4 " Insert 4 spaces when tab is pressed
  set shiftwidth=4  " An indent is 4 spaces
endfunction

function! Todo()
  pedit ~/todo.txt
  execute "normal 1\<c-w>\<c-w>"
endfunction

command! Todo execute Todo()

augroup indentation
    au!
    " Automatically choose the correct dbext profile
    autocmd BufRead */aep2-agora/* call SetWidth4()
    autocmd BufRead */adplastik/* call SetWidth2()
    autocmd BufRead */malascena/* call SetWidth4()
    autocmd BufRead */gcp/* call SetWidth2()
augroup end

autocmd! GUIEnter * set vb t_vb=

autocmd! Bufenter *.dust set filetype=html

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:tern#command=['node', '/Users/vladimir/.vim/bundle/tern_for_vim/node_modules/tern/bin/tern']

nnoremap <C-]> :TernDef<cr>
nnoremap <C-S-]> :TernDefPreview<cr>
nnoremap <C-S-[> :TernRefs<cr>


if $VIM_CRONTAB == "true"
    set nobackup
    set nowritebackup
endif
