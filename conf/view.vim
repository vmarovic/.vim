set tgc

" Airline settings
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='onedark'

" Trailing whitespace {{{2
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

" Show cursor line {{{3
set cursorline

" Colorscheme {{{2
set background=dark
color onedark

set guifont=Pragmata\ Pro\ 10
set guioptions=none
set guioptions=-t

set cc=80

set wrap
set linebreak
set breakindent
set nu
set rnu
set showbreak=....

