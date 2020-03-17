function gIgnoreClean

  git rm --cache $argv && echo $argv >> .gitignore && git add .gitignore && git commit -m 'clean-up '"$argv"

end
