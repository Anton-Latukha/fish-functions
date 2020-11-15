function move-current-window-to-desktop
# Inputs:
# all - desktop number

wmctrl -r ':ACTIVE:' -t $argv

end
