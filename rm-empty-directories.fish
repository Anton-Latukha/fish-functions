function rm-empty-directories

  # Delete all empty files that are directories
  fd --type d --type e --absolute-path $argv --exec-batch rmdir {}

end
