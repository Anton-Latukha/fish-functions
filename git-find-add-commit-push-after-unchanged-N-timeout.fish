function git-find-add-commit-push-after-unchanged-N-timeout

  # argv[1] - timeout in `fd` terms
  # argv[2] - message of commit

  # Get a list of files, concatenete lines into one string and pass the string to git add
  git add (git-find-unchanged-uncommited-in-N-timeout $argv[1] | string join ' ')
  git commit --untracked-files=no --message $argv[2]
  git push

end
