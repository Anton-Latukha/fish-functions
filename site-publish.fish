function site-publish

  set haskellNotes "$HOME"/org/haskell
  set haskellNotesCSS "$haskellNotes"/org-html-themes/styles
  set mkdocsBlog "$HOME"/src/mkdocs-blog
  set blogStorage "$mkdocsBlog"/docs
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
  # cp -r "$haskellNotes"/Book/ "$mkdocsBlog"/docs/
  # cp -r "$haskellNotes"/Good_code/ "$mkdocsBlog"/docs/
  cp -r "$haskellNotes"/images/ "$mkdocsBlog"/docs/
  cp "$haskellNotes"/README.html "$mkdocsBlog"/docs/haskell-notes.html
  docker run --rm -it -p 8000:8000 -v (pwd):/docs mkdocs-material build

  git add "$mkdocsTheme"
  git commit -m "Meta: upd smod mkdocs-material theme"
  git add "$mkdocsBlog"/docs/haskell-notes.html
  git commit -m "Haskell notes: upd"
  cd "$htmlBlog"
  git add "$htmlBlog"/haskell-notes.html "$htmlBlog"/sitemap.xml "$htmlBlog"/sitemap.xml.gz
  git commit -m "Haskell notes: upd"
  git push
  cd "$mkdocsBlog"
  git add Anton-Latukha.github.io
  git commit -m "Meta: site smod: Haskell notes: upd"
  git push

end
