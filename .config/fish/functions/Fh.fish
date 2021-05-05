function Fh --description "Let's Fh!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Fh $argv
  else
    sudo "$command" -Fh $argv
  end
end
