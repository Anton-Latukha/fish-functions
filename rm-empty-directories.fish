function rm-empty-directories

  # Delete all empty files that are directories
  rmdir (get-empty-directories $argv)

end
