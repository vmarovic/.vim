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

" Utility
Plugin 'mattn/emmet-vim'
Plugin 'https://github.com/w0rp/ale.git'
Plugin 'ternjs/tern_for_vim'             " Ternjs
Plugin 'vim-scripts/dbext.vim'           " Query SQL
Plugin 'aquach/vim-http-client'          " Make http requests

"Syntax
Plugin 'neo4j-contrib/cypher-vim-syntax'
Plugin 'groenewege/vim-less'
"Plugin 'isRuslan/vim-es6'                " ES6 syntax
Plugin 'moll/vim-node'                    " Vim node goodies
Plugin 'pangloss/vim-javascript'
Plugin 'metakirby5/codi.vim'

"Plugin 'flazz/vim-colorschemes'          " Collection of color schemes
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

syntax on
set nocompatible

so ~/.vim/conf/basic.vim
so ~/.vim/conf/view.vim
so ~/.vim/conf/edit.vim
so ~/.vim/conf/keys.vim

let g:ale_linters = {'javascript': ['eslint']}
let g:ale_sign_column_always = 1
