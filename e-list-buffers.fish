function e-list-buffers

  e -n -e "(princ (buffer-list) #'external-debugging-output)" | sed -E 's/#<buffer[[:space:]]+/\n/g' | tr '>' ' '

end
