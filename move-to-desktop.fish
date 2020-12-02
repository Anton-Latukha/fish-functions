function move-to-desktop

  # $argv[1] - desktop number from 0
  wmctrl -s $argv[1]

end
