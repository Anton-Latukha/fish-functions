function yt

  ## --output removes the YouTube ID from filenames
  youtube-dl --output '%(title)s.%(ext)s' --add-metadata --mark-watched $argv

end
