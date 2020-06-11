function find-autocommit-repos

  # argv[1] - directory to search under
  set -l directory $argv[1]

  # Find dirs containinf `.autocommit` file, and get their directory
  set -l fileList (command fd -H '\.autocommit' $directory -x readlink -f)

  command dirname $fileList | command sort -u

end
