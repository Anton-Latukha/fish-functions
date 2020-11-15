function run-app-on-desktop
# #1 - command
# #2 - desktop

wmctrl -s "$argv[2]" && fish -c "$argv[1]" & && sleep 2 && move-current-window-to-desktop "$argv[2]"

end
