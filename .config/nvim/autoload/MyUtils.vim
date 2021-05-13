function! MyUtils#ErrorEcho( ... )
  return
endfunction

" Let's nyan!
function! MyUtils#NyanCat( ... )
  if ! has( 'nvim' )
    echohl ErrorMsg
    echom 'NyanCat: Require the builtin terminal feature of Neovim to run.'
    echohl None
    return
  endif

  let l:nyanable = ''

  if a:0 == 0
    let l:nyanable = executable( 'nyancat' ) ? 'nyancat' : ''
  elseif filereadable( expand(a:1) ) && executable( expand(a:1) )
    let l:nyanable = expand( a:1 )
  else
    let l:nyanable = ''
  endif

  if l:nyanable == ''
    echohl ErrorMsg
    echom 'NyanCat: No nyancat executable found.'
    echohl None
    return
  endif

  exec 'topleft 16 split term://' . l:nyanable
  exec 'wincmd p'
endfunction
