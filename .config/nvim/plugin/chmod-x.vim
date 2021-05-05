"
" :Chmx
"
" chmod a+x to current file
"

command! Chmx
      \   if !empty(expand('%'))
      \ |   write
      \ |   call system('chmod +x '.expand('%'))
      \ |   silent e
      \ | else
      \ |   echohl WarningMsg
      \ |   echo 'Save the file first!'
      \ |   echohl None
      \ | endif
