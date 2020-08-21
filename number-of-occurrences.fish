function number-of-occurrences

  set -l ID $argv
  echo (rg -c "$ID") "$ID"

end
