function find-unchanged-in-N-timeout

  set -l timeout $argv[1]

  fd -H --change-older-than "$timeout" -E'.git' . | sort -u

end
