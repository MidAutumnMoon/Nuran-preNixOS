function ssh --description 'SSH with proper TERM set'
env TERM='xterm-256color' ssh $argv
end
