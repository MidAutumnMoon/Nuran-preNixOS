function Rn --description "Let's Rn!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Rn $argv
  else
    sudo "$command" -Rn $argv
  end
end
