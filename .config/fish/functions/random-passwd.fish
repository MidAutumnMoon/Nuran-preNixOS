function random-passwd
      tr -dc A-Za-z0-9 </dev/urandom | head -c 17 ; echo ''
end
