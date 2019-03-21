function senable

  sudo systemctl enable $argv
  printf 'Starting service: %s' "$argv"
  sudo systemctl start $argv

end
