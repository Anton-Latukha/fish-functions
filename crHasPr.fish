function crHasPr

  set -l haskellProjectTemplate '/home/pyro/src/haskell/Haskell-Programming-From-First-Principles/projectTemplate/'
  set -l projName $argv
  set -l projNameCabal (echo $argv | tr -d '.')

  cp -r $haskellProjectTemplate $argv
  cd $projName
  # Change first line to name of the project
  sed -i -e "1s/.*/name:                  $projNameCabal/" .'/main.cabal'

end
