set -xg EDITOR nvim

if status is-login
  set -xa PATH "$HOME/.cargo/bin"
  set -xp PATH "$HOME/.local/bin"

  set -xU fish_prompt_pwd_dir_length 0
  set -xU fish_greeting ''
end

if status is-interactive
  # Only have rbenv on my main machine
  if test $hostname = "moon"
    rbenv init - | source
  end

  direnv hook fish | source
  starship init fish | source

  set -xg pcmn_pacman_command pikaur
end

