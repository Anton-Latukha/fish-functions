function find-unchanged-in-N-timeout

  set -l timeout $argv[1]

  command fd -H --change-older-than "$timeout" -E'.git' . | command sort -u

end
