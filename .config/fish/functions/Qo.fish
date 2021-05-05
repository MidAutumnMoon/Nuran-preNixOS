function Qo --description "Let's Qo!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Qo $argv
  else
    sudo "$command" -Qo $argv
  end
end
