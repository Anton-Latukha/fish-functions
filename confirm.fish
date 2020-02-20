function confirm
  printf '\n\n\n'
  read -l -P 'Do you want to continue? [y/N]: ' confirm

  switch $confirm
    case y
      printf '\nContinuing...\n\n'
      return 0
    case '' N n
      printf '\nHalting...\n\n'
      return 1
  end
end
