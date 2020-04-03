function e-kill-buffer

  e --eval '(progn (save-some-buffers "'"$argv"'" t) (kill-buffer "'"$argv"'"))'

end
