function npb

  # Also does not create links in local directory
  nix-build --no-out-link "$NP" $argv

end
