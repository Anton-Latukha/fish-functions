function e-kill-buffer

  # Save buffer noninteractively (without confirmation), then kill the buffer
  e --eval '(progn (save-some-buffers "'"$argv"'" t) (kill-buffer "'"$argv"'"))'

end
