colorscheme palenight
highlight Normal guibg=NONE ctermbg=NONE

if has( 'termguicolors' )
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
end
