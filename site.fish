function site

  set haskellNotes "$HOME"/org/haskell
  set mkdocsBlog "$HOME"/src/mkdocs-blog
  set mkdocsTheme "$mkdocsBlog"/mkdocs-material
  set htmlBlog "$mkdocsBlog"/Anton-Latukha.github.io

  cd "$mkdocsTheme"
  git checkout master
  git pull u master
  git push f master
  git checkout custom
  git rebase master
  docker build -t mkdocs-material .
  cd "$mkdocsBlog"
  rm "$mkdocsBlog"/docs/haskell-notes.html
  cp -r "$haskellNotes"/Book/ "$mkdocsBlog"/docs/
  cp -r "$haskellNotes"/Good_code/ "$mkdocsBlog"/docs/
  cp "$haskellNotes"/README.html "$mkdocsBlog"/docs/haskell-notes.html
  docker run --rm -it -p 8000:8000 -v (pwd):/docs mkdocs-material build

end
