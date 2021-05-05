function Rs --description "Let's Rs!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Rs $argv
  else
    sudo "$command" -Rs $argv
  end
end
