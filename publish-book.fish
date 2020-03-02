function publish-book

  set haskellNotes "$HOME"/org/haskell
  set bookFilenameTemplate "$haskellNotes"/README
  set mkdocsBlog "$HOME"/src/mkdocs-blog
  set mkdocsTheme "$mkdocsBlog"/mkdocs-material
  set htmlBlog "$mkdocsBlog"/Anton-Latukha.github.io

  cd "$haskellNotes"
  git add "$bookFilenameTemplate".html
  git commit -m "Publish: upd HTML"
  git add "$bookFilenameTemplate".tex
  git commit -m "Publish: upd TeX"
  git add "$bookFilenameTemplate".pdf
  git commit -m "Publish: upd PDF"

  publish-site

end
