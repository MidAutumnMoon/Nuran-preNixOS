# Put prompt at bottom.
PROMPT_COMMAND='(echo -ne "\e[0;0H"; echo -ne "\e[$LINES;0H")'

initialize_keybindings() {
  # bash bind is crazy, don't do it
  return 1
}

initialize_env() {
  export SYSTEMD_EDITOR='nvim'
}


#
# Main
#
initialize_keybindings
initialize_env


#
# Clean up
#
unset -f initialize_keybindings
