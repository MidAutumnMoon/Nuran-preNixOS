# Defined interactively
function dot --wraps=git --description 'Use git to manage dotfile'
command git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME" $argv
end
