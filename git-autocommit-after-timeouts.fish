function git-autocommit-after-timeouts

  for repoDir in (cat ~/.config/fish/functions/git-autocommit-after-timeouts.list)

    cd $repoDir

    # Gets file, saves to (-l) local variables (-L) lines into variables
    # `timeout` in `fd` timeout terms, and `message` to attach commit
    printf "\n$repoDir:\n"
    cat $repoDir/.autocommit | read -l -L timeout message

    # Attach date to beginning of message
    set -l fullMessage (date --iso)': '"$message"
    # Find files that was unchanged in noted period, and commit them
    git-find-add-commit-push-after-unchanged-N-timeout "$timeout" "$fullMessage"

  end

end
