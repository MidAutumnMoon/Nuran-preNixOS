"
" MidAutumnMoon's wordlist
"

" words created by MidAutumnMoon
let s:list = [
      \ 'MidAutumnMoon'
      \ ]

" words created by programming languages
let s:list += [
      \ 'epm',
      \ 'patscc', 'patsopt'
      \ ]

" the missing words
let s:list += []

" misc
let s:list += [
      \ 'easymotion'
      \ ]

let g:spelunker_white_list_for_user = s:list

let g:spelunker_check_type             = 2
let g:spelunker_disable_email_checking = 1
let g:spelunker_disable_uri_checking   = 1
let g:spelunker_target_min_char_len    = 3

" Keymaps
nmap <silent> zl Zl
nmap <silent> zL ZL

nmap <silent> zg Zg
nmap <silent> zug Zug
nmap <silent> zw Zw
nmap <silent> zuw Zuw

nmap <silent> zn ZN
nmap <silent> zp ZP

