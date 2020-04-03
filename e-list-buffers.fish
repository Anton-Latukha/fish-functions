function e-list-buffers

  # Output the buffer list to stdout, then remove prelude and arbitrary number of spaces, then trailing '>'
  e -n -e "(princ (buffer-list) #'external-debugging-output)" | sed -E 's/#<buffer[[:space:]]+/\n/g' | tr '>' ' '

end
