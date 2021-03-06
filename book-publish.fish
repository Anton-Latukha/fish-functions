function book-publish

  set haskellNotes "$HOME"/org/haskell
  set bookFilenameTemplate "$haskellNotes"/README

  cd "$haskellNotes"
  git add "$bookFilenameTemplate".html
  git commit -m "Publish: upd HTML"
  git add "$bookFilenameTemplate".tex
  git commit -m "Publish: upd TeX"
  git add "$bookFilenameTemplate".pdf
  git commit -m "Publish: upd PDF"
  git push

  site-publish

  book-finish

end
