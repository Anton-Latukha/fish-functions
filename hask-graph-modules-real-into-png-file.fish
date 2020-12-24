function hask-graph-modules-real-into-png-file

  command graphmod | dot -Tpng -Gdpi=600 > $argv

end
