function Ql --description "Let's Ql!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Ql $argv
  else
    sudo "$command" -Ql $argv
  end
end
