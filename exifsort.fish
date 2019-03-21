function exifsort

  exiftool -r "-Directory<DateTimeOriginal" -d "%Y/%Y-%m/%Y-%m-%d" $argv

end
