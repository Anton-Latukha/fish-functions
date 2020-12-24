function hask-graph-modules-simple-into-svg-file

  command graphmod | tred | dot -Tsvg > $argv

end
