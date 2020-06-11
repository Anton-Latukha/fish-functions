function git-list-untracked-files

  set -e git
  set -e awk

  type git

  git status --untracked-files=all --ignore-submodules=dirty --short | awk '{print $2}' | sort -u

end
