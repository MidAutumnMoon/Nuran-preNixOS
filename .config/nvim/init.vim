"
" MidAutumnMoon's Neovim Configuration
"

let mapleader = " "
let maplocalleader = "\<F12>"

runtime! startup/plugins.vim

" This is considered not safe, but it works.
" TODO: Create an alternate method.
if $USER != 'root'
  set exrc
  set secure
endif

