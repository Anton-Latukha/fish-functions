function emacs-autostart-plasma

  ## Requires user systemd service & wmctrl
  /run/current-system/sw/bin/systemctl --user start emacs && /run/current-system/sw/bin/sleep 2 && /run/current-system/sw/bin/emacsclient -c & && /run/current-system/sw/bin/sleep 2 && /run/current-system/sw/bin/wmctrl -r 'emacs@rogue' -t 0

end
