" Disable fcitx5 plugin by now since I bearly use languages
" other than English in terminal.
finish

autocmd InsertLeave * call fcitx5#Fcitx5_en()
autocmd InsertEnter * call fcitx5#Fcitx5_zh()
