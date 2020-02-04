function ngid

  ##  2019-02-03: NOTE: Doing:
  # nix-shell --command 'ghcid --command="cabal v2-repl --repl-options=-fno-code --repl-options=-fno-break-on-exception --repl-options=-fno-break-on-error --repl-options=-v1 --repl-options=-ferror-spans --repl-options=-j" '
  # Launching fish function for GHCID
  nix-shell --command "fish -c 'gid'" $argv

end
