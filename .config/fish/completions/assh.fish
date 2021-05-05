set -l assh_command config help info ping sockets

complete -c assh -f

complete -c assh -n "not __fish_seen_subcommand_from $assh_command" -a "help"    -d "Manage ssh and assh configuration"
complete -c assh -n "not __fish_seen_subcommand_from $assh_command" -a "config"  -d "Manage ssh and assh configuration"
complete -c assh -n "not __fish_seen_subcommand_from $assh_command" -a "info"    -d "Display system-wide information"
complete -c assh -n "not __fish_seen_subcommand_from $assh_command" -a "ping"    -d "Send packets to the SSH server and display statistics"
complete -c assh -n "not __fish_seen_subcommand_from $assh_command" -a "sockets" -d "Search entries by given search text"

