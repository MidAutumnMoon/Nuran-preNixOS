"
" rooter
"
let g:rooter_silent_chdir = 1
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_patterns = [
      \ 'README.*', 'Makefile', 'stack.yml', 'PKGBUILD', '.envrc', 'cargo.toml',
      \ '.git', '!^etc', 'config.toml', '.gitignore', 'Project.toml',
      \ 'package.json'
      \ ]

"
" editorconfig
"
let g:EditorConfig_exclude_patterns = [ 'fugitive://.*' ]

"
" highlightedyank
"
let g:highlightedyank_highlight_duration = 100

"
" easyalign
"
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"
" commentary
"
map  gc  <Plug>Commentary
nmap gcc <Plug>CommentaryLine

"
" splitjoin
"
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''
nnoremap <silent> gS :SplitjoinSplit<CR>
nnoremap <silent> gJ :SplitjoinJoin<CR>

"
" switch.vim
"
nnoremap _ :Switch<CR>
let g:switch_custom_definitions = [
      \   ['MON', 'TUE', 'WED', 'THU', 'FRI'],
      \ ]

"
" autosave
"
let g:auto_save = 1
let auto_save_silent   = 1
let g:auto_save_events = [ 'CursorHold' ]

"
" tagbar
"
let g:tagbar_sort = 0
nmap <F8> :TagbarToggle<CR>

"
" indentline
"
autocmd! User indentLine doautocmd indentLine Syntax
let g:indentLine_fileTypeExclude = [
      \ 'help', 'nerdtree', 'tagbar', 'markdown'
      \ ]

"
" better whitespace
"
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save  = 1
let g:strip_whitespace_confirm  = 0

"
" rainbow
"
let g:rainbow_conf = {
      \   'separately': {
      \     'nerdtree': 0,
      \   }
      \ }

"
" buffkill
"
nnoremap <silent> <C-q> :BD<CR>

"
" goyo.vim
"
function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  setlocal scrolloff=999
  setlocal wrap
endfunction

function! s:goyo_leave()
  highlight Normal guibg=NONE ctermbg=NONE

  set showmode
  set showcmd
  setlocal scrolloff=5
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

nnoremap <silent> <Leader>G :Goyo<CR>

"
" sneak
"
let g:sneak#label = 1

