function Rss --description "Let's Rss!"
  set --local command pacman
  set --query pcmn_pacman_command
    and set --local command "$pcmn_pacman_command"

  set --local without_sudo pikaur
  if contains "$command" $without_sudo
    "$command" -Rss $argv
  else
    sudo "$command" -Rss $argv
  end
end
