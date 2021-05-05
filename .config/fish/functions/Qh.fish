function Qh --description "Let's Qh!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Qh $argv
  else
    sudo "$command" -Qh $argv
  end
end
