function date

  if count $argv > /dev/null
    command -v date $argv
  else
    date --iso
  end

end
