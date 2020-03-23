function book-prepare

  set haskellNotes "$HOME"/org/haskell
  set bookFilenameTemplate "$haskellNotes"/README
  set book "$bookFilenameTemplate".org

  # # Calculate the size of the last line in chars and remove that size of bytes from the end of the file; in-place erases last line
  # dd if=/dev/null of="$book" bs=1 seek=(math (stat --format=%s "$book") - (tail -n2 "$book" | wc -c))

  sed -i -e '/^#+latex_header: \\\pagestyle{empty}.*$/d' \
         -e '/^#+latex_header: \\\usepackage{unicode-math}.*$/d' \
         -e '/^#+latex_header: \\\unimathsetup{math-style=.*$/d' \
         -e '/^#+latex_header: \\\usepackage\[a-1b\]{pdfx}.*$/d' \
            "$bookFilenameTemplate".org

end
