function git-I-filePath-commitText-O-commit

  set filePath $argv[1]
  set fileDirectory (dirname (realpath $filePath))
  set commitText $argv[2]

  cd $fileDirectory
  git reset
  git add $filePath
  git commit -m $commitText

end
