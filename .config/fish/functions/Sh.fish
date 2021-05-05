function Sh --description "Let's Sh!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Sh $argv
  else
    sudo "$command" -Sh $argv
  end
end
