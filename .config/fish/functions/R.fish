function R --description "Let's R!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -R $argv
  else
    sudo "$command" -R $argv
  end
end
