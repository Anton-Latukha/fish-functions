function produce-autocommit-list

  # Get list of directories that might contain git repos, and scan for .autocommit files
  for gitDir in (cat ~/.config/fish/functions/git-directories.list)
    find-autocommit-repos $gitDir
  end

end
