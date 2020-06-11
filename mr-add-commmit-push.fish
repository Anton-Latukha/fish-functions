function mr-add-commmit-push

  set -l date (date --iso)
  for repo in (cat ~/.config/fish/functions/git-autocommit-after-timeouts.list)
    mr -n -d $repo commit -m $date': autocommit'
  end

end
