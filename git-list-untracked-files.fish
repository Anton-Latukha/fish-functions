function git-list-untracked-files

  git status --untracked-files=all --ignore-submodules=dirty --short | awk '{print $2}' | sort -u

end
