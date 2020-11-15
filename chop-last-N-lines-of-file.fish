function chop-last-N-lines-of-file

set numOfLinesToChop "$argv[1]"
set fileToChop "$argv[2]"
set bytes  (tail -"$numOfLinesToChop" "$fileToChop" | wc -c)

truncate -s -"$bytes" "$fileToChop"

end
