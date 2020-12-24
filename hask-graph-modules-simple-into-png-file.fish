function hask-graph-modules-simple-into-png-file

  command graphmod | tred | dot -Tpng -Gdpi=600 > $argv

end
