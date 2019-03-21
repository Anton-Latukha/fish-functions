function checksumDir

  # Get the md5 checksum of the the whole directory
  # md5 every file, then md5 the list of hashes
  find $argv -type f -exec md5sum {} \; | sort -k 2 | md5sum

end
