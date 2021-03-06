function git-find-add-commit-push-after-unchanged-N-timeout

  # Does not commit the untrached files

  # argv[1] - timeout in `fd` terms
  set -l timeout $argv[1]
  # argv[2] - message of commit
  set -l message $argv[2]

  # Get a list of files, concatenete lines into one string and pass the string to git add
  command git add (git-find-unchanged-uncommited-in-N-timeout "$timeout" | string join ' ')
  command git commit --untracked-files=no --message "$message"
  command git push

end
