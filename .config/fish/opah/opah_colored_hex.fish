#
# Format string with a hex color code.
#
# Usage:
#
#   opah_colored_hex $hex $string...
#
# - return 1 if the number of arguments is wrong or the hex is not valid
#
function opah_colored_hex
  test (count $argv) -le 1;
    and return 1

  function valid_hex -a hex
    # both 6-digits and 3-digits hex
    #return (string match --regex --quiet '^([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$' $hex)

    # only 6-digits hex
    return (string match --regex --quiet '^[0-9a-fA-F]{6}$' $hex)
  end

  set -lx hex $argv[1]
  set -lx string $argv[2..-1]

  valid_hex $hex;
    or begin
      echo -n (string collect $string)
      return 1
    end

  set -lx color_r (printf "%d" 0x(string sub --start=1 --end=2 $hex))
  set -lx color_g (printf "%d" 0x(string sub --start=3 --end=4 $hex))
  set -lx color_b (printf "%d" 0x(string sub --start=5 --end=6 $hex))

  set -lx formatted "\e[38;2;$color_r;$color_g;$color_b"m(string collect $string)"\e[0m"

  if isatty stdout
    echo -ne $formatted
  else
    echo -n $formatted
  end

  #
  # Cleanup
  #
  functions --erase validate_hex
end

