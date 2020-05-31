function gb
# Actively select the branch and check into it

  git branch | fzf | xargs -L1 git checkout

end
