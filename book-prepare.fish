function book-prepare

  set haskellNotes "$HOME"/org/haskell
  set bookFilenameTemplate "$haskellNotes"/README
  set book "$bookFilenameTemplate".org

  dd if=/dev/null of="$book" bs=1 seek=(math (stat --format=%s "$book" ) - (tail -n1 "$book" | wc -c) | bc)

end
