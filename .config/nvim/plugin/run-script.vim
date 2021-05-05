"
" <F5>/<F6>
"
" Run current file as script.
"

function! s:run_current_script( output )
  let head   = getline(1)
  let pos    = stridx(head, '#!')
  let file   = expand('%:p')
  let ofile  = tempname()
  let rdr    = " 2>&1 | tee ".ofile
  let win    = winnr()
  let prefix = a:output ? 'silent !' : '!'
  if pos != -1
    " Shebang found
    execute prefix.strpart(head, pos + 2).' '.file.rdr
  elseif executable(file)
    " Shebang not found but executable
    execute prefix.file.rdr
  elseif &filetype == 'ruby'
    execute prefix.'/usr/bin/env ruby '.file.rdr
  else
    return
  end
  redraw!
  if !a:output | return | endif

  " Scratch buffer
  if exists('s:vim_exec_buf') && bufexists(s:vim_exec_buf)
    execute bufwinnr(s:vim_exec_buf).'wincmd w'
    %d
  else
    silent!  bdelete [vim-exec-output]
    silent!  vertical botright split new
    silent!  file [vim-exec-output]
    setlocal buftype=nofile bufhidden=wipe noswapfile
    let      s:vim_exec_buf = winnr()
  endi
  execute 'silent! read' ofile
  normal! gg"_dd
  execute win.'wincmd w'
endfunction

nnoremap <silent> <F5> :call <SID>run_current_script(0)<cr>
nnoremap <silent> <F6> :call <SID>run_current_script(1)<cr>

