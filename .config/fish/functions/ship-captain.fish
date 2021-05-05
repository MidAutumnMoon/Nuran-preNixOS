# Defined interactively
function ship-captain
./make.ss build
echo
scheme --quiet --boot "./build/ship.boot" -- $argv
end
