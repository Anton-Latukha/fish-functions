function sqlite-vacuum-recursive

  command fd --hidden --no-ignore --type f '\.sqlite$' . | command xargs -L1 -I'{%}' sqlite3 '{%}' 'VACUUM;'

end
