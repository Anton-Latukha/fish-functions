function pskill

# Soft kill the process by its name
# Send signals with increasing strictness and damage to the process

  set posixSignal 1 15 2 9

  set procID (pgrep --uid (command id -u) $argv)
  # set procID (pgrep --uid (command id -u) $argv)    # Grep processes only current to UID
  for sign in $posixSignal

    kill -0 $procID
    if test $status -eq 0
      echo "Sending -$sign SIGN to process $argv (PID $procID)"
      kill -$posixSignal $procID
      sleep 15
    end

  end

end
