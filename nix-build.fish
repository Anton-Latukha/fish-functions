function nix-build

## Lazify the output of the nix-build.

# If build successful - return last `$numOfLines`
# else - print the log into the terminal

  set -l tmpFile (mktemp)
  echo "Log: $tmpFile"

  set -l numOfLines "1"

  if command nix-build $argv &> "$tmpFile"
    echo "Build successfull!"
    tail -n"$numOfLines" "$tmpFile"
  else
    cat "$tmpFile"
  end

end
