let mapleader=','

nnoremap <leader>ve :e $MYVIMRC<cr>
nnoremap <leader>vr :so $MYVIMRC<cr>

nnoremap <leader>q :bd<cr>

"nnoremap <c-m> :CtrlPMRUFiles<cr>

" Gundo {{{3
nnoremap <Leader>u ::GundoToggle<CR>

" Fugitive {{{3
nnoremap <Leader>g :Gstatus<CR>

" Tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" Highlight searches
nnoremap <F8> :set hlsearch! hlsearch?<CR>

" CtrlP {{{3
"nmap <c-n> :CtrlPBuffer<CR>

" General {{{2
set pastetoggle=<Leader>p
nnoremap <leader>h :set cursorcolumn! cursorcolumn?<CR>
nnoremap <leader>s :set spell! spell?<CR>
nnoremap <c-n> :NERDTreeToggle<CR>
nnoremap <Leader>C :lclose<CR>

cnoremap w!! w !sudo tee % >/dev/null
cnoremap w] <Nop>

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

nnoremap <leader>st :SyntasticToggleMode<cr>
nnoremap <leader>sc :SyntasticCheck eslint jscs<cr>

nnoremap \ :cclose<cr>:lclose<cr>

nnoremap <m-l> <c-w>l
nnoremap <m-h> <c-w>h
nnoremap <m-j> <c-w>j
nnoremap <m-k> <c-w>k

nnoremap Q <Nop>
nnoremap <leader><leader> :TagbarToggle<cr>

nnoremap <leader>fj :% !python -m json.tool<cr>
vnoremap <leader>fj :!python -m json.tool<cr>
nnoremap <leader>fs :%s/\s\+$//g<cr>


nnoremap Y y$

vnoremap > >gv
vnoremap < <gv

nnoremap <leader>J f,a<cr><esc>

nnoremap <leader>fr mxgg=G'x

nnoremap <leader>j :!chromium https://atheneum-partners.atlassian.net/browse/$(git rev-parse --abbrev-ref HEAD)<cr>
nnoremap <c-b> :BufExplorer<cr>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" node-js jump to definition
nnoremap [[ 2[<c-i>
