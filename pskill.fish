function pskill

# Soft kill the process by its name
# Send signals with increasing strictness and damage to the process
set posixSignal 1 15 2 9

for sign in $posixSignal

pkill -0 $argv
if test $status -eq 0
  echo "Sending -$sign SIGN to process $argv"
  pkill -1 $argv
  sleep 15
end

end
