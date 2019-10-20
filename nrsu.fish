function nrsu

  sudo fish -c '\
    set SSH_AUTH_SOCK /run/user/1000/keepass-ssh-agent.socket ; \
    cd /etc/nixos && \
    git add . && \
    git commit -m "upd conf" ; \
    git push u'
  # sudo -i nix-channel --update unstable
  sudo -i nixos-rebuild switch --upgrade $argv

end
