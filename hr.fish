function hr
  # Haskell REPL

  cabal v2-repl $argv || ghci $argv

end
