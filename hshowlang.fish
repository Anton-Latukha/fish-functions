function hshowlang

  # Get the language pragmas, sort & count their uses and print their use frequency. 
  hrg '# language' --no-heading --no-filename --no-messages --no-line-number | sort | uniq -c | sort -n -r

end
