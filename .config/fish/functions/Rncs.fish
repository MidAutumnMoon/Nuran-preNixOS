function Rncs --description "Let's Rncs!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Rncs $argv
  else
    sudo "$command" -Rncs $argv
  end
end
