function fish_prompt
  set -l 'lastTermStatus' "$status"
  set -l 'cwd'
  rWakatime
  set 'cwd' (prompt_pwd)
  if test "$USER" = 'root'
    set 'directory_color' "$dirClrR"
  else
    set 'directory_color' "$dirClrU"
  end
  if test "$IN_NIX_SHELL"
    set 'is_nix_shell' "$repository_color"'Nix '
  end
  if git_is_repo
    echo -n -s "$directory_color""$cwd""$normal_color"(set_color 'brgreen')':'"$repository_color"(git_branch_name)"$normal_color"
    if git_is_touched
      echo -n -s "$dirty"
    else
      echo -n -s (git_ahead "$ahead" "$behind" "$diverged" "$none")
    end
  else
    echo -n -s "$directory_color" "$cwd" "$normal_color"
  end
  if test "$lastTermStatus" -eq '0'
    echo -n -s "$fishNrm"
  else
    echo -n -s "$fishErr"
  end
end
