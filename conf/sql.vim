

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

augroup deimos
    au!
    " Automatically choose the correct dbext profile
    autocmd BufRead */gcp/* DBSetOption profile=deimos
augroup end

augroup my
    au!
    " Automatically choose the correct dbext profile
    autocmd BufRead */my/* DBSetOption profile=my
augroup end
" MySql profile for accessing aggora TODO: Make this project specific
let g:dbext_default_profile_mySQL='type=MYSQL:user=vladimir:passwd="":dbname=agora:host=localhost'
let g:dbext_default_profile_my='type=MYSQL:user=vladimir:passwd="":dbname=my:host=localhost'
let g:dbext_default_profile_deimos='type=MYSQL:user=vladimir:passwd="":dbname=deimos:host=localhost'
let g:dbext_default_profile_psqlReventic='type=PGSQL:user=vladimir:dbname=reventic'
"autocmd BufRead * DBSetOption profile=mySQL
