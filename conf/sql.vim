

augroup agora
    au!
    " Automatically choose the correct dbext profile
    autocmd BufRead */aep2-agora/* DBSetOption profile=mySQL
augroup end

augroup reventic
    au!
    " Automatically choose the correct dbext profile
    autocmd BufRead */reventic/* DBSetOption profile=psqlReventic
augroup end

" MySql profile for accessing aggora TODO: Make this project specific
let g:dbext_default_profile_mySQL='type=MYSQL:user=vladimir:passwd=123:dbname=agora:host=192.168.1.14'
let g:dbext_default_profile_psqlReventic='type=PGSQL:user=vladimir:dbname=reventic'
"autocmd BufRead * DBSetOption profile=mySQL
