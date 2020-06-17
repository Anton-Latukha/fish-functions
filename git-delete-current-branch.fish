function git-delete-current-branch

  set -l deleteBranch (git_branch_name)

  g com

  git branch -d "$deleteBranch"

end
