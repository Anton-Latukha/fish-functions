function nix-build

## Lazify the output of the nix-build.

  set -l tmpFile (mktemp)
  echo "Log file: $tmpFile"

  if command nix-build $argv &> "$tmpFile"
    echo "Build succesfull!"
    tail $tmpFile
  else
    cat $tmpFile
  end

end
