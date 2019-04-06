function mr-add-commmit-push

  set -l date (date --iso)
  set -l notes ~/org
  set -l repos $notes $notes/journal $notes/mantra
  for repo in $repos
    mr -n -d $repo commit -m $date
  end

end
