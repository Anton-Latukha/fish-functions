function rm-empty-directories-recursively

  # Delete all empty directories
  set dirList (get-empty-directories $argv)
  while test -z $dirList
    rm -d $dirList
    set dirList (get-empty-directories $argv)
  end

end
