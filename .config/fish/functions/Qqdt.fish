function Qqdt --description "Let's Qqdt!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Qqdt $argv
  else
    sudo "$command" -Qqdt $argv
  end
end
