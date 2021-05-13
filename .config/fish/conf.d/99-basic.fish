set -xg EDITOR nvim

if status is-login
  set -xa PATH "$HOME/.cargo/bin"
  set -xp PATH "$HOME/.local/bin"

  set -xU fish_prompt_pwd_dir_length 0
  set -xU fish_greeting ''

  set -xU MOZ_X11_EGL 1
end

if status is-interactive
  # Only have rbenv on my main machine
  if test $hostname = "moon"
    command rbenv init - | source
  end

  prompt_bottom

  command direnv hook fish | source
  command starship init fish | source
  command zoxide init fish | source

  set -xg pcmn_pacman_command pikaur

  # Opha the MidAutumnMoon's toolbox
  set -xp fish_function_path "$__fish_config_dir/opah"
end

