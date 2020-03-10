function book-publish

  set haskellNotes "$HOME"/org/haskell
  set bookFilenameTemplate "$haskellNotes"/README
  set book "$bookFilenameTemplate".org

  dd if=/dev/null of="$book" bs=1 seek=$(printf $(stat --format=%s "$book" ) - $(tail -n1 "$book" | wc -c) | bc )

end
