function sqlite-vacuum-recursive

  fd --type f '\.sqlite$' . | xargs -L1 -I'{%}' sqlite3 '{%}' 'VACUUM;'

end
