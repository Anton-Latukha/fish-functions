function hshowlang

  hrg '# language' --no-heading --no-filename --no-messages --no-line-number | sort | uniq -c | sort -n -r

end
