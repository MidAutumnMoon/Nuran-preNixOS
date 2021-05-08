"
" MidAutumnMoon's Neovim Configuration
"

let mapleader = " "

"==================================================
" Plugins
"==================================================

if has( 'nvim' )
  call plug#begin( stdpath('data') . '/plugged' )
else
  call plug#begin( $HOME . "/.local/share/vim/plugged" )
endif

"==== Git tools
Plug 'rhysd/git-messenger.vim'
" Plug 'tpope/vim-fugitive'
" Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'mhinz/vim-signify'

"==== Colors & Themes
Plug 'drewtempelmeyer/palenight.vim'
  let g:palenight_terminal_italics=1

"==== Navigating
Plug 'easymotion/vim-easymotion'
Plug 'andymass/vim-matchup'
  let g:matchup_surround_enabled = 1

"==== Editing
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'machakann/vim-highlightedyank'
Plug 'junegunn/vim-after-object'
  autocmd VimEnter * silent! call after_object#enable( '=', ':', '#', ' ', '|' )
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-commentary'
Plug '907th/vim-auto-save'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/switch.vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release', 'do': 'coc#util#install()' }
Plug 'preservim/tagbar'
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': ['scheme', 'lisp'] }
Plug 'guns/vim-sexp', { 'for': ['scheme', 'lisp'] }
Plug 'tpope/vim-abolish'

"==== Code Browsing
Plug 'Yggdroot/indentLine'
Plug 'farmergreg/vim-lastplace'
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/vim-slash'
  noremap <expr> <plug>(slash-after) slash#blink(2, 50)
Plug 'luochen1990/rainbow'
  let g:rainbow_active = 1
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

"==== Languages & Syntax
Plug 'https://gitlab.com/HiPhish/guile.vim.git', { 'for': 'scheme.guile' }
Plug 'https://git.sr.ht/~torresjrjr/vim-gemini', { 'for': 'gemini' }
Plug 'wlangstroth/vim-racket', { 'for': 'racket' }
Plug 'cespare/vim-toml', { 'for': 'toml' }
Plug 'vmchale/ats-vim', { 'for': 'ats' }
Plug 'blankname/vim-fish', { 'for': 'fish' }
Plug 'gisphm/vim-gitignore', { 'for': 'gitignore' }

"==== Linting
Plug 'dense-analysis/ale'

"==== Others
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-rooter'
Plug 'kamykn/spelunker.vim'

"==== Misc
Plug 'qpkorr/vim-bufkill'
Plug 'wellle/targets.vim'
Plug 'junegunn/goyo.vim'

call plug#end()

" TODO: Make a safer alternative.
set exrc
set secure
