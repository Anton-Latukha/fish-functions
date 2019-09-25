function part

  man $argv[1] | awk 'BEGIN {RS=""}/^[[:space:]]*'$argv[2]'/{print $0}'
  man -P '/run/current-system/sw/bin/less' $argv[1] | awk 'BEGIN {RS=""}/^[[:space:]]*'$argv[2]'/{print $0}'

end
