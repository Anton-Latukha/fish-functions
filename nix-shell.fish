function nix-shell

  command nix-shell --command "export SHELL="(command -v fish)"; fish" $argv

end
