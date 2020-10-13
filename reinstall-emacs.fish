function reinstall-emacs

  rm -rf ~/.emacs.d
  git clone -b develop -o u https://github.com/syl20bnr/spacemacs ~/.emacs.d
  command emacs
  find ~/.emacs.d/elpa/ -name '*.elc' -print0 -exec rm -f {} \;

end
