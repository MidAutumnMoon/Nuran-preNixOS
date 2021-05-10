"
" <leader>?
"
" Search Google for the word under cursor
"

function! s:google_it(pat)
  let q = '"'.substitute(a:pat, '["\n]', ' ', 'g').'"'
  let q = substitute(q, '[[:punct:] ]',
        \ '\=printf("%%%02X", char2nr(submatch(0)))', 'g')
  call system(printf('xdg-open "https://www.google.com/search?q=%s"', q))
endfunction

nnoremap <Leader>? :call <SID>google_it(expand("<cWORD>"))<cr>
xnoremap <Leader>? "gy:call <SID>google_it(@g)<cr>gv


