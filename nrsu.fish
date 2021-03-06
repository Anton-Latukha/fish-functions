function nrsu

  sudo fish -c '\
    set SSH_AUTH_SOCK /run/user/1000/keepass-ssh-agent.socket ; \
    cd /etc/nixos && \
    git pull && \
    git add . && \
    git commit -m "upd conf" ; \
    git push u'
  sudo -i nix-channel --update
  sudo -i nix-channel --update nixpkgs-unstable
  sudo -i nixos-rebuild switch --upgrade $argv

end
