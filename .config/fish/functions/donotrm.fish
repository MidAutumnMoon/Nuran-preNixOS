# Defined interactively
function donotrm
./make.ss build
echo
scheme --quiet --boot "./build/donotrm.boot" -- $argv
end
