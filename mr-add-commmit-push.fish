function mr-add-commmit-push

  set -l date (date --iso)
  set -l notes ~/org
  set -l repos $notes/journal $notes/mantra $notes
  for repo in $repos
    mr -n -d $repo commit -m $date': autocommit'
  end

end
