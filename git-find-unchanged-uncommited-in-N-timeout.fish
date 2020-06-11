function git-find-unchanged-uncommited-in-N-timeout

  # argv[1] is a timeout in `fd` terms
  set -l timeout $argv[1]

  comm -12 \
    (git-list-untracked-files | psub) \
    (find-unchanged-in-N-timeout "$timeout" | psub)

end
