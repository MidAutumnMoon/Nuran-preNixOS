function! s:profiling( bang )
  if has('nvim')
    let s:profile_file = stdpath('cache') . '/profile.log'
  else
    let s:profile_file = $HOME . '/.cache/vim/profile.log'
  endif

  if a:bang
    profile pasue
    noautocmd qall
  else
    exec 'profile start ' . s:profile_file
    profile func *
    profile file *
  endif
endfunction

command! -bang Profile call s:profiling( <bang>0 )
