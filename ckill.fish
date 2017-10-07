function ckill

  echo 'Checking if pid '$argv' exists'
  kill -0 $argv
  if test $status -eq 0
    echo '-1 pid '$argv
    kill -1 $argv
    sleep 15
  end

  kill -0 $argv
  if test $status -ne 0
    echo 'pid '$argv' not present'
  end

  kill -0 $argv
  if test $status -eq 0
    echo '-15 pid '$argv
    kill -15 $argv
    sleep 15
  end

  kill -0 $argv
  if test $status -ne 0
    echo 'pid '$argv' not present'
  end

  kill -0 $argv
  if test $status -eq 0
    echo '-2 pid '$argv
    kill -2 $argv
    sleep 15
  end

  kill -0 $argv
  if test $status -ne 0
    echo 'pid '$argv' not present'
  end

  kill -0 $argv
  if test $status -eq 0
    echo '-9 pid '$argv
    kill -9 $argv
  end

end
