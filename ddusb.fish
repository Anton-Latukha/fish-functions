function ddusb
  if test "$argv[1]" = '--help'
    printf "Usage:\n  ddusb <input> <output>\n"
  else
    sudo dd bs=4M if="$argv[1]" of="$argv[2]" status=progress; and sync
  end
end
