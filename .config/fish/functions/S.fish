function S --description "Let's S!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -S $argv
  else
    sudo "$command" -S $argv
  end
end
