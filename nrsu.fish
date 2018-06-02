function nrsu
    s fish -c 'cd /etc/nixos ; git add . ; git commit -m "upd conf" ; git push'
    s nix-channel --update unstable
    s nixos-rebuild switch --upgrade

end
