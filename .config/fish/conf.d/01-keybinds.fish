bind --user \cv delete-char
bind --user \ef 'fg 2> /dev/null'
bind --user \e\x7F kill-whole-line

bind --user \cl 'echo -n (clear | string replace \\e\\[3J ""); commandline -f repaint; echo -ne "\e[0;0H\e[$LINES;0H"'
