function addFunc

  # Shotrcut to create a new function
  set -l FILE ~/.config/fish/functions/$argv.fish
  echo "function $argv



end" > $FILE
  emacsclient -c -t $FILE

end
