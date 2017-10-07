function fish_right_prompt --description 'Right part of prompt'

  # Save our status
  set -l last_comand_status $status

  set -l last_status_string ""
  if [ $last_comand_status -ne 0 ]
    printf "%s(%d)%s" (set_color red --bold) $last_comand_status (set_color normal)
  end

end
