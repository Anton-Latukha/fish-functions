function nix-shell

  command nix-shell $argv --command "export SHELL="(command -v fish)"; fish"

end
