function swap-files

  set -l tmpfile (mktemp (dirname "$argv[1]")/XXXXXX)
  mv "$argv[1]" "$tmpfile" && mv "$argv[2]" "$argv[1]" &&  mv "$tmpfile" "$argv[2]"

end
