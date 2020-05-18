function nix-build

  set -l tmpFile (mktemp)
  if command nix-build $argv &> "$tmpFile"
    echo "Build succesfull!"
    tail $tmpFile
  else
    cat $tmpFile
  end

end
