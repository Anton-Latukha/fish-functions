function checkDir

    bash -c "find $argv -type f -exec md5sum {} \; | sort -k 2 | md5sum"

end
