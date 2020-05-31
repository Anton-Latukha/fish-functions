function get-nix-pkg-dep-from-commit

nix-store --query --references  (nix-instantiate "https://github.com/nixos/nixpkgs/archive/$argv[2].tar.gz" -A $argv[1])

end
