function F --description "Let's F!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -F $argv
  else
    sudo "$command" -F $argv
  end
end
