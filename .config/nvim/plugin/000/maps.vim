" free movement
nmap j gj
nmap k gk

" add new line
nnoremap <Leader>o o<ESC>
nnoremap <Leader>O O<ESC>

" quit vim
nnoremap <Leader>q :qa<CR>

" select all lines
nnoremap <Leader>A ggVG

" jump to end of line with one stroke
nmap \ $
omap \ $
xmap \ $

" <M-q> is easier to reach
nmap <M-q> %

" switch buffers
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [b :bprev<CR>

" switch tabs
nnoremap <silent> ]q :tabn<CR>
nnoremap <silent> Q :tabn<CR>
nnoremap <silent> [q :tabp<CR>
nnoremap <silent> <Leader>t :tabedit<CR>
nnoremap <silent> <Leader>T :tabc<CR>

" shebang abbreviation
inoreabbrev #!! #!/usr/bin/env

" backspace as <C-h>
imap <C-h> <BS>
tmap <C-h> <BS>
cmap <C-h> <BS>

" movement in command mode
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>

" move lines in different modes
nnoremap <silent> <C-k> :move-2<CR>
nnoremap <silent> <C-j> :move+<CR>
nnoremap <silent> <C-h> <<
nnoremap <silent> <C-l> >>
xnoremap <silent> <C-k> :move-2<CR>gv
xnoremap <silent> <C-j> :move'>+<CR>gv
xnoremap <silent> <C-h> <gv
xnoremap <silent> <C-l> >gv
xnoremap < <gv
xnoremap > >gv

" move cursor in insert mode
imap <C-j> <Down>
imap <C-k> <Up>

" Quick way to switch between files.
inoremap <C-^> <C-o><C-^>
nnoremap <A-CR> <C-^>
inoremap <A-CR> <C-o><C-^>

" delete one character after cursor
imap <C-v> <Del>
cmap <C-v> <Del>

" Yank to end of lin$
nnoremap Y y$

" <tab> to cycle through all splits, with nerdtree ignored
nnoremap <silent> <Tab> <C-w>w<Bar>:if &ft ==# 'nerdtree'<Bar>wincmd w<Bar>endif<CR>
nnoremap <silent> <S-Tab> <C-w>W<Bar>:if &ft ==# 'nerdtree'<Bar>wincmd W<Bar>endif<CR>

" whether to open help in new tab
cnoreabbr <expr> h &ft ==# 'help' ? 'help' : 'tab help'

" shorter inside tag block
omap t it

" the whole line
vnoremap <silent> al :<C-u>normal! $v0<CR>
onoremap <silent> al :<C-u>normal! $v0<CR>

" whole line without CR
xnoremap <silent> il :<C-u>normal! g_v^<CR>
onoremap <silent> il :<C-u>normal! g_v^<CR>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" make reszing windows easier
nnoremap <Left>  <C-w><
nnoremap <Right> <C-w>>
nnoremap <Up>    <C-w>-
nnoremap <Down>  <C-w>+

nnoremap <S-Left>  6<C-w><
nnoremap <S-Right> 6<C-w>>
nnoremap <S-Up>    6<C-w>-
nnoremap <S-Down>  6<C-w>+

" switch the case of current word
nnoremap <silent> <C-u> mzg~iw`z

" starts fish in terminal
command! T terminal fish
