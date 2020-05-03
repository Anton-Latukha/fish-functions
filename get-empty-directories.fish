function get-empty-directories

  # get all empty files that are directories
  fd --type d --type e --absolute-path $argv

end
