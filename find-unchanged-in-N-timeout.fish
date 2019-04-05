function find-unchanged-in-N-timeout

  fd -H --change-older-than $argv[1] -E'.git' . | sort -u

end
