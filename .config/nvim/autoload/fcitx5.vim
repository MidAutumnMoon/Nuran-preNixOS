" Based on https://github.com/lilydjwg/fcitx.vim replacing DBus call with fcitx5-remote.

" There's no fcitx5 for Windows.
if has('win32') || has('win64')
  finish
endif

if ! ( exists('$DISPLAY') || exists('$SSH_TTY') )
  finish
endif

if exists( 'g:fcitx5_loaded' ) || ! executable( 'fcitx5-remote' )
  finish
endif

let s:kept_cpo = &cpo
set cpo&vim

function! fcitx5#Fcitx5_en()
  let fcitx5_status = system( 'fcitx5-remote' )
  if fcitx5_status == 2
    call system( 'fcitx5-remote' . ' -c' )
    let b:fcitx5_toggle = 1
  endif
endfunction

function! fcitx5#Fcitx5_zh()
  try
    if b:fcitx5_toggle == 1
      call system( 'fcitx5-remote' . ' -o' )
      let b:fcitx5_toggle = 0
    endif
  catch /fcitx5_toggle/
    let b:fcitx5_toggle = 0
  endtry
endfunction

let g:fcitx5_loaded = 1

let &cpo = s:kept_cpo
unlet s:kept_cpo
