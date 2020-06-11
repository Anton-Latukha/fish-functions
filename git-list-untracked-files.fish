function git-list-untracked-files

  # Unset lazy functions
  set -e git
  set -e awk

  git status --untracked-files=all --ignore-submodules=dirty --short | awk '{print $2}' | sort -u

end
