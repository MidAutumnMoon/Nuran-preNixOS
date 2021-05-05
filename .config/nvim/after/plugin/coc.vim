" coc extensions
let g:coc_global_extensions = [
      \ 'coc-json', 'coc-yaml', 'coc-pyright', 'coc-lua',
      \ 'coc-rust-analyzer', 'coc-vimlsp', 'coc-clangd',
      \ 'coc-pairs', 'coc-snippets', 'coc-solargraph',
      \ ]

" coc-snippets
let g:coc_snippet_next = '<TAB>'

" functions
function! s:show_document()
  if (index(['vim', 'help'], &filetype) >= 0)
    exec 'h' expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" keymaps
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
nnoremap <silent>K :call <SID>show_document()<CR>

