function forgetHost

    sed -i '/'"$argv"' /d' ~/.ssh/known_hosts

end
