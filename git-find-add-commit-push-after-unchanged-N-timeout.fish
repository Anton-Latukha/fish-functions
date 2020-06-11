function git-find-add-commit-push-after-unchanged-N-timeout

  # argv[1] - timeout in `fd` terms
  set -l timeout $argv[1]
  # argv[2] - message of commit
  set -l message $argv[2]

  # Get a list of files, concatenete lines into one string and pass the string to git add
  git add (git-find-unchanged-uncommited-in-N-timeout "$timeout" | string join ' ')
  git commit --untracked-files=no --message "$message"
  git push

end
