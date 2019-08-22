function git-I-filePath-O-directory

  set filePath $argv

  echo (dirname (realpath $filePath))

end
