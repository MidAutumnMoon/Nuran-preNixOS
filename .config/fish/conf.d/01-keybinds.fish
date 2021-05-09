bind --user \cv delete-char
bind --user \ef 'fg 2> /dev/null'

bind --user \cl 'echo -n (clear | string replace \\e\\[3J ""); commandline -f repaint; tput cup $LINES'
