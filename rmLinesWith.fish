function rmLinesWith

  command fd . --exec sed -i /"$argv"/d

end
