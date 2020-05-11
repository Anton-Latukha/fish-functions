function book-prepare

  set haskellNotes "$HOME"/org/haskell
  set bookFilenameTemplate "$haskellNotes"/README
  set book "$bookFilenameTemplate".org

  # # Calculate the size of the last line in chars and remove that size of bytes from the end of the file; in-place erases last line
  # dd if=/dev/null of="$book" bs=1 seek=(math (stat --format=%s "$book") - (tail -n2 "$book" | wc -c))

  sed -i -e '/^#+latex_header: \\\pagestyle{empty}.*$/d' \
            "$bookFilenameTemplate".org
  echo '#+latex_header: \usepackage{unicode-math}    % Typesetting engine for math fonts. Docs: http://mirror.datacenter.by/pub/mirrors/CTAN/macros/latex/contrib/unicode-math/unicode-math.pdf
  #+latex_header: \unimathsetup{math-style=ISO}    % Configures the unicode-math. ISO italizes all letters, bold also
  #+latex_header: \usepackage[a-1b]{pdfx}   % Produce the PDF to according ISO standard. Can has issues with LuaTeX: http://mirror.datacenter.by/pub/mirrors/CTAN/macros/latex/contrib/pdfx/pdfx.pdf note 2 Dev recommends to use it right after documentclass, but since it uses iflatex, I think this is a good idea to keep it here.' >> "$book"

end
