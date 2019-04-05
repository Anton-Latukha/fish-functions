function git-find-unchanged-uncommited-in-N-timeout

  # argv[1] is a timeout in `fd` terms
  comm -12 \
    (git-list-untracked-files | psub) \
    (find-unchanged-in-N-timeout $argv[1] | psub)

end
