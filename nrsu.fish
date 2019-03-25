function nrsu

  sudo fish -c 'cd /etc/nixos && git add . && git commit -m "upd conf" && git push l && git push h'
  sudo -i nix-channel --update unstable
  sudo  -i nixos-rebuild switch --upgrade $argv

end
