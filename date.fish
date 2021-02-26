function date

  if count $argv > /dev/null
    command date $argv
  else
    command date --iso
  end

end
