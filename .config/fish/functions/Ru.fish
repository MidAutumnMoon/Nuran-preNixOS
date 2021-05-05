function Ru --description "Let's Ru!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Ru $argv
  else
    sudo "$command" -Ru $argv
  end
end
