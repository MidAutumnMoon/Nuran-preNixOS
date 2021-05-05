function Fl --description "Let's Fl!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Fl $argv
  else
    sudo "$command" -Fl $argv
  end
end
