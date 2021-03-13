function haskCore

  command cabal exec ghc-core -- -- -dsuppress-all -ddump-simpl $argv

end
