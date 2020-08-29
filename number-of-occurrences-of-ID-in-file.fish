function number-of-occurrences-of-ID-in-file

  set -l ID $argv[1]
  set -l file $argv[2]
  echo (rg -c "$ID" "$file") "$ID"

end
