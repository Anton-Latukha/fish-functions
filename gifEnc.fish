function gifEnc

  set -l inputFile $argv[1]
  set -l outputFile $argv[2]

  set -l tmpPaletteFile /tmp/gifEncPaletteFile.png

  #filters="fps=15,scale=320:-1:flags=lanczos"
  set -l filters fps=15

  ffmpeg -v warning -i "$inputFile" -vf "$filters,palettegen" -y "$tmpPaletteFile"
  ffmpeg -v warning -i "$inputFile" -i "$tmpPaletteFile" -lavfi "$filters [x]; [x][1:v] paletteuse" -y "$outputFile"

  rm "$tmpPaletteFile"

end
