function sdisable

  printf 'Stopping service: %s' "$argv"
  sudo systemctl stop $argv
  sudo systemctl disable $argv

end
