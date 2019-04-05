function write-autocommit-list

  # Get list of directories form `~/.config/fish/functions/git-directories.list`
  # that might contain git repos, and scan for .autocommit files
  # Output directory list to file
  produce-autocommit-list 1> ~/.config/fish/functions/git-autocommit-after-timeouts.list

end
