function book-finish

  set haskellNotes "$HOME"/org/haskell
  set bookFilenameTemplate "$haskellNotes"/README
  set book "$bookFilenameTemplate".org

  ## HACK for Org-mode LaTeX preview

  sed -i -e '/^#+latex_header: \\\usepackage{unicode-math}.*$/d' \
         -e '/^#+latex_header: \\\unimathsetup{math-style=.*$/d' \
         -e '/^#+latex_header: \\\usepackage\[a-1b\]{pdfx}.*$/d' \
            "$bookFilenameTemplate".org

  ## Reintroducing the HACK erased by book-prepare
  echo '#+latex_header: \pagestyle{empty}' >> "$book"

end
