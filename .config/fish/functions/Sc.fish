function Sc --description "Let's Sc!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Sc $argv
  else
    sudo "$command" -Sc $argv
  end
end
