function gh

  if command -q -v bat
    bat ~/.config/git/config | sed -e '1,/\[alias\]/d' -e '/#/d' -e 's/^[ \t]*//'
  else
    cat ~/.config/git/config | sed -e '1,/\[alias\]/d' -e '/#/d' -e 's/^[ \t]*//'
  end

end
