set --local npm_local "$HOME/.npm-packages"
set --local --path origin_MANPATH (man -w)

if status is-login
  set -xa PATH $npm_local/bin
end

