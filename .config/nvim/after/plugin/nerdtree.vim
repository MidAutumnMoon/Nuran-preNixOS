"
" NERDTree configurations
"

let g:NERDTreeAutoDeleteBuffer      = 1
let g:NERDTreeBookmarksFile         = $HOME . "/.cache/NERDTreeBookmarks"
let g:NERDTreeCascadeSingleChildDir = 0
let g:NERDTreeChDirMode             = 1
let g:NERDTreeMinimalUI             = 1
let g:NERDTreeNaturalSort           = 1
let g:NERDTreeQuitOnOpen            = 2
let g:NERDTreeRespectWildIgnore     = 1
let g:NERDTreeShowHidden            = 1
let g:NERDTreeShowLineNumbers       = 1
let g:NERDTreeWinSize               = 30

let s:ignore_list = [
      \ '\.git$[[dir]]',
      \ ]

if exists( 'NERDTreeIgnore' )
  let g:NERDTreeIgnore = g:NERDTreeIgnore + s:ignore_list
else
  let g:NERDTreeIgnore = s:ignore_list
endif

augroup nerdtree_auto
  autocmd!

  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * silent!
        \ | if argc() == 1 && isdirectory(argv()[0]) && !exists( "s:std_in" )
        \ |   enew
        \ |   exec 'cd ' . argv()[0]
        \ | elseif argc() == 0 && !exists( "s:std_in" )
        \ |   enew
        \ |   exec 'cd ' . $PWD
        \ | endif
        \ | exec 'NERDTreeClose'
        \ | wincmd w

  autocmd BufEnter * silent!
        \ | if winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()
        \ |   q
        \ | endif

  autocmd BufEnter * silent!
        \ | if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1
        \ |   b#
        \ | endif
augroup END

" Open NerdTree
nnoremap <silent><expr> <Leader>n line('$')==1&&getline(1)=='' ? ':NERDTreeFocus<CR>' : ':NERDTreeFind<CR>'
nnoremap <silent><Leader>N :NERDTreeToggle<CR>
" nnoremap <silent><F9> :NERDTreeFind<Bar>:wincmd p<CR>

