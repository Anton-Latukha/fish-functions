function git-I-filePath-O-push

  if not test -e $argv
    printf "No such file: $argv ."
    return 1
  end

  set directory (git-I-filePath-O-directory $argv)

  cd $directory
  git reset
  git-I-filePath-commitText-O-commit $argv
  git push

end
