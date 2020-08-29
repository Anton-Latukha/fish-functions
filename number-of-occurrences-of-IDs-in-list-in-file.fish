function number-of-occurrences-of-IDs-in-list-in-file

  set -l list $argv[1]
  set -l file $argv[2]
  for ID in $list
    number-of-occurrences-of-ID-in-file "$ID" "$file"
  end

end
