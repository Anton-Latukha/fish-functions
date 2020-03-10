function book-finish

  set haskellNotes "$HOME"/org/haskell
  set bookFilenameTemplate "$haskellNotes"/README
  set book "$bookFilenameTemplate".org

  ## Reintroducing the HACK erased by book-prepare
  echo '#+latex_header: \pagestyle{empty}' >> "$book"

end
