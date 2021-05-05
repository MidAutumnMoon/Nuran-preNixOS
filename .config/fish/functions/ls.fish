function ls --description 'My ls'
set --local  ls_opts '--color=auto' '--group-directories-first'
isatty stdout
    and set -a ls_opts '-F'
command ls $ls_opts $argv
end
