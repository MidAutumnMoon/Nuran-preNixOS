function Qdt --description "Let's Qdt!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Qdt $argv
  else
    sudo "$command" -Qdt $argv
  end
end
