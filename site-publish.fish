function site-publish

# * Env
  set haskellNotes "$HOME"/org/haskell
  set haskellNotesCSS "$haskellNotes"/org-html-themes/styles
  set mkdocsBlog "$HOME"/src/mkdocs-blog
  set blogStorage "$mkdocsBlog"/docs
  set mkdocsTheme "$mkdocsBlog"/mkdocs-material
  set haskellNotesImages "$haskellNotes"/images
  set htmlBlog "$mkdocsBlog"/Anton-Latukha.github.io

# * MkDocs theme update
  cd "$mkdocsTheme"
  git checkout master
  git pull u master
  git push f master
  git checkout custom
  git rebase master

  docker build -t mkdocs-material .

# * Prepare mkdocs site files

# ** Copy folders into mkdocs site storage
  cd "$mkdocsBlog"
  cp --recursive --target-directory="$blogStorage" \
    "$haskellNotesImages" \
    "$haskellNotesCSS"

# ** Copy main file
  cp "$haskellNotes"/README.html "$blogStorage"/haskell-notes.html

# * Build the site
  docker run --rm -it -p 8000:8000 -v "$mkdocsBlog":/docs mkdocs-material build

# * Commit changes

# ** Commit changes to HTML blog
  cd "$htmlBlog"
  git add "$htmlBlog"/haskell-notes.html "$htmlBlog"/sitemap.xml "$htmlBlog"/sitemap.xml.gz
  git commit -m "Haskell notes: upd"
  git push

# ** Commit to mkdocs gen repo
  cd "$mkdocsBlog"

# *** Main Fundamental Haskell file
  git add "$blogStorage"/haskell-notes.html
  git commit -m "Haskell notes: upd"

# ** Commit updates of submodules
  git add "$mkdocsTheme"
  git commit -m "Meta: upd smod mkdocs-material theme"
  git add Anton-Latukha.github.io
  git commit -m "Meta: site smod: Haskell notes: upd"
  git push

end
