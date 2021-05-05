function Scc --description "Let's Scc!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Scc $argv
  else
    sudo "$command" -Scc $argv
  end
end
