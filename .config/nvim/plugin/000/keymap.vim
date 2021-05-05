" free movement
nnoremap j gj
nnoremap k gk

" add new line
nnoremap <Leader>o o<ESC>
nnoremap <Leader>O O<ESC>

" quit vim
nnoremap <Leader>q :qa<CR>

" select all lines
nnoremap <Leader>A ggVG

" jump to end of line with one stroke
nmap \ $

" , is easier to press
nmap , %

" switch buffers
nnoremap <silent>]b :bnext<CR>
nnoremap <silent>[b :bprev<CR>

" switch tabs
nnoremap <silent> ]q :tabn<CR>
nnoremap <silent> Q :tabn<CR>
nnoremap <silent> [q :tabp<CR>
nnoremap <silent> <Leader>t :tabedit<CR>
nnoremap <silent> <Leader>T :tabc<CR>

" shebang abbreviation
inoreabbrev <expr> #!! "#!/usr/bin/env "

" backspace as <C-h>
imap <C-h> <BS>
tmap <C-h> <BS>
cmap <C-h> <BS>

" cmap
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cmap <C-v> <Del>

" move lines in different modes
nnoremap <silent><C-k> :move-2<CR>
nnoremap <silent><C-j> :move+<CR>
nnoremap <silent><C-h> <<
nnoremap <silent><C-l> >>
xnoremap <silent><C-k> :move-2<CR>gv
xnoremap <silent><C-j> :move'>+<CR>gv
xnoremap <silent><C-h> <gv
xnoremap <silent><C-l> >gv
xnoremap < <gv
xnoremap > >gv

" move cursor in insert mode
imap <C-j> <Down>
imap <C-k> <Up>

" Quick way to switch between files.
inoremap <C-^> <C-o><C-^>
nnoremap <A-CR> <C-^>
inoremap <A-CR> <C-o><C-^>

" delete one character after cursor in insert mode
imap <C-v> <C-o>x

" Yank to end of lin$
nnoremap Y y$

" quit insert mode in a easy way
imap jk <Esc>

" <tab> to cycle through all splits, with nerdtree ignored
nnoremap <silent><Tab> <C-w>w<Bar>:if &ft ==# 'nerdtree'<Bar>wincmd w<Bar>endif<CR>
nnoremap <silent><S-Tab> <C-w>W<Bar>:if &ft ==# 'nerdtree'<Bar>wincmd W<Bar>endif<CR>

" Open help in new tab
cabbrev h tab help

