function explain-rust --description 'Let rust explain the error.'
rustc --explain $argv[1] | glow --pager -
end
