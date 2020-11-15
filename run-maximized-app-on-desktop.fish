function run-maximized-app-on-desktop
  # Inputs:
  # #1. command
  # #2. desktop

# 1. Switches to particular desktop
# 2. Runs the command on the desktop
# 3. Forces active window to that desktop
# 4. Maximizes active window

run-app-on-desktop "$argv[1]" "$argv[2]" && maximize-current-window

end
