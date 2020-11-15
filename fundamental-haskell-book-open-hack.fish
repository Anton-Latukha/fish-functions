function fundamental-haskell-book-open-hack

set bookFile "$argv[1]"

set changesToFile (git diff-files "$bookFile")
set tailToChop 4000

## if no changes
if test -z "$changesToFile"
  echo "No changes, chopping last $tailToChop lines."
  chop-last-N-lines-of-file "$tailToChop" "$bookFile"
else
  echo "There are changes, doing nothing."
end


end
