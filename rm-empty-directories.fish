function rm-empty-directories

  # Delete all empty directories
  rm -d (get-empty-directories $argv)

end
