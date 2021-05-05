function Qg --description "Let's Qg!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Qg $argv
  else
    sudo "$command" -Qg $argv
  end
end
