function Syu --description "Let's Syu!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Syu $argv
  else
    sudo "$command" -Syu $argv
  end
end
