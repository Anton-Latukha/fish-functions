function unBorkBogusNextcloudSync

  # for file in (fd -H '\(conflicted copy.*\)')
  #   set -l cleanFileName (printf "$file" | sed 's/ (conflicted copy .*)//g')
  #   set -l protectFilesFromNextCloud (printf '%s.protectThisFromNextCloud' "$cleanFileName")
  #   printf 'Moving: %s -> %s\n' "$cleanFileName" "$protectFilesFromNextCloud"
  #   mv "$cleanFileName" "$protectFilesFromNextCloud"
  #   printf 'Moving: %s -> %s\n' "$file" "$cleanFileName"
  #   mv "$file" "$cleanFileName"
  # end

  for file in (find . -name '*(conflicted copy *)*')
    set -l cleanFileName (printf "$file" | sed 's/ (conflicted copy .*)//g')
    set -l protectFilesFromNextCloud (printf '%s.protectThisFromNextCloud' "$cleanFileName")
    printf 'Moving: %s -> %s\n' "$cleanFileName" "$protectFilesFromNextCloud"
    mv "$cleanFileName" "$protectFilesFromNextCloud"
    printf 'Moving: %s -> %s\n' "$file" "$cleanFileName"
    mv "$file" "$cleanFileName"
  end

end
