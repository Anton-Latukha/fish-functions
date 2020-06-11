function sqlite-vacuum-recursive

  command fd --type f '\.sqlite$' . | command xargs -L1 -I'{%}' sqlite3 '{%}' 'VACUUM;'

end
