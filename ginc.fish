function ginc

  # Function to create GIT commits of single file with commit name: "predicat: action "++"filename"
  git add "$argv[2]"
  git commit -m "$argv[1] $argv[2]"

end
