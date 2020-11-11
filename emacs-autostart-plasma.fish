function emacs-autostart-plasma

  ## Requires user systemd service & wmctrl
  systemctl --user import-environment PATH S O H HH HB NP N XDG_RUNTIME_DIR SSH_AUTH_SOCK
  systemctl --user start emacs && sleep 8 && command emacsclient -c & && sleep 2 && wmctrl -r 'emacs@rogue' -t 0

end
