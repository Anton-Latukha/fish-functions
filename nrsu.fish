function nrsu

    s fish -c 'cd /etc/nixos && git add . && git commit -m "upd conf" && git push && git push hub'
    s -i nix-channel --update unstable
    s -i nixos-rebuild switch --upgrade $argv

end
