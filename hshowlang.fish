function hshowlang

  # Get the language pragmas, sort & count their uses and print their use frequency.
  hrg '# language' --no-heading --no-filename --no-messages --no-line-number | sed 's/...$//' | awk '{$1=$1;print}' | sort | uniq -c | sort -n -r

end
