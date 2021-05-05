function agate-local --description 'Run agate on localhost'
agate --content $argv \
      --key ~/Develop/localhost.key --cert ~/Develop/localhost.crt \
      --addr [::]:1965 --addr 127.0.0.1:1965 \
      --lang en_US \
      --hostname localhost
end
