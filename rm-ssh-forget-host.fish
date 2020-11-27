function rm-ssh-forget-host

  # Find host at the beginning of the line, then match ' ' OR "," and detete line
  sed -i '/^'"$argv[1]"'[ ,].*/d' $HOME/.ssh/known_hosts

end
