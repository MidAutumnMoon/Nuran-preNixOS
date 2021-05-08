" This statusline was borrowed from 仙子姐姐 (lilydjwg)

set statusline=%n\ %<%f\ %LL\ %{&modified?'[+]':&modifiable\|\|&ft=~'^\\vhelp\|qf$'?'':'[-]'}%h%r%{&fenc=='utf-8'\|\|&fenc==''?'':'['.&fenc.']'}%{&ff=='unix'?'':'['.&ff.']'}%{&eol?'':'[noeol]'}%{&diff?'[diff]':''}%=\ 0x%-4.8B\ \ \ \ %-14.(%l,%c%V%)\ %P
