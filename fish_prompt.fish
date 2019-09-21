function fish_prompt
  set -l 'last_command_status' "$status"
  set -l 'cwd'
  set -l 'directory_color'
  set 'dirClrR' (set_color "$fish_color_error" ^ '/dev/null' || set_color 'red')
  set 'dirClrU' (set_color "$fish_color_cwd" ^ '/dev/null' || set_color 'green')
  set 'repository_color' (set_color "$fish_color_quote" ^ '/dev/null'; or set_color 'brown')

  rWakatime
  if test "$theme_short_path" = 'yes'
    set cwd (basename (prompt_pwd))
  else
    set cwd (prompt_pwd)
  end

  if test $USER = 'root'
    set 'directory_color' "$dirClrR"
  else
    set 'directory_color' "$dirClrU"
  end
  if git_is_repo

    echo -n -s $directory_color $cwd $normal_color

    echo -n -s (set_color brgreen) ':' $repository_color (git_branch_name) $normal_color

    if git_is_touched
      echo -n -s $dirty
    else
      echo -n -s (git_ahead $ahead $behind $diverged $none)
    end
  else
    echo -n -s $directory_color $cwd $normal_color
  end

  if test $last_command_status -eq 0
    echo -n -s $fish $normal_color
  else
    echo -n -s $error_color $fish $normal_color
  end

end

