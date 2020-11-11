function part

  man $argv[1] | awk 'BEGIN {RS=""}/^[[:space:]]*'$argv[2]'/{print $0}'
  man -P 'less' $argv[1] | awk 'BEGIN {RS=""}/^[[:space:]]*'$argv[2]'/{print $0}'

end
