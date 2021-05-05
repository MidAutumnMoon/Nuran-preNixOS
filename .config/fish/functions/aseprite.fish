# Defined interactively
function aseprite
xhost +local:
machinectl shell --setenv DISPLAY=:0.0 aseprite@aroch /usr/bin/aseprite
xhost -
end
