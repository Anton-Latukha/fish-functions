function git-pass-filter

set passFilter ''

# Form a `-v pattern` for `rg`
for pattern in $argv

  set passFilter "$passFilter|$pattern"

end

# Remove the beginning |, no need to include the empty pattren in rg
set passFilter (string trim --chars='|' "$passFilter")

echo "
PassFilter: $passFilter
"

git filter-branch --prune-empty --index-filter \
  'git ls-tree -z -r --name-only --full-tree $GIT_COMMIT | \
  rg --null-data -v \''"$passFilter"'\' | \
  xargs -0 -r git rm --cached -r' -- --all


end
