function find-autocommit-repos

  # argv[1] - directory to search under

  # Find dirs containinf `.autocommit` file, and get their directory
  dirname (command fd -H '\.autocommit' $argv[1] -x readlink -f) | sort -u

end
