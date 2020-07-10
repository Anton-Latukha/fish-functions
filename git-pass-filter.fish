function git-pass-filter

set passFilter ''

# Form a `-v pattern` for `rg`
for pattern in $argv

  set passFilter = "$passFilter|$pattern"

end


git filter-branch --prune-empty --index-filter \
  'git ls-tree -z -r --name-only --full-tree $GIT_COMMIT | \
  rg --null-data -v \''"$pattern"'\' | \
  xargs -0 -r git rm --cached -r' -- --all


end
