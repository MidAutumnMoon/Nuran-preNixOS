if ! has( 'nvim' )
  finish
endif

" tnoremap <Esc> <C-\><C-n>
tnoremap <expr><C-r> '<C-\><C-n>"'.nr2char(getchar()).'pi'

command T terminal fish

