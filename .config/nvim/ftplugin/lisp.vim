inoremap <buffer><silent><expr> <TAB>
          \ pumvisible() ? "\<C-n>" : "\<C-R>=vlime#plugin#VlimeKey(\"tab\")\<CR>"

autocmd FileType scheme let b:coc_pairs_disabled = [ '`', "'" ]
