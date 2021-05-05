function Rh --description "Let's Rh!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Rh $argv
  else
    sudo "$command" -Rh $argv
  end
end
