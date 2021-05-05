"
" rooter
"
let g:rooter_silent_chdir = 1
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_patterns = [
      \ 'README.*', 'Makefile', 'stack.yml', 'PKGBUILD', '.envrc', 'cargo.toml',
      \ '.git', '!^etc', 'init.vim', 'config.toml',
      \ 'build.zig'
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
nnoremap <silent> gss :SplitjoinSplit<cr>
nnoremap <silent> gsj :SplitjoinJoin<cr>

"
" switch.vim
"
let g:switch_mapping = '_'
let g:switch_custom_definitions = [
      \   ['MON', 'TUE', 'WED', 'THU', 'FRI'],
      \   ['def', 'define']
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
      \  'separately': {
      \    'nerdtree': 0,
      \  }
      \}

"
" buffkill
"
nnoremap <silent> <C-q> :BD<CR>
