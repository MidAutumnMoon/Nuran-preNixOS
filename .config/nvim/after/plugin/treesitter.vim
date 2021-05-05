lua <<EOL
require 'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
  },
}
EOL

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

