function take-directory-and-file-extention-produce-a-list-of-commands-to-remove-extention

set directory "$argv[1]"
set fileExtention "$argv[2]"

bash "$FF"/take-directory-and-file-extention-produce-a-list-of-commands-to-remove-extention.sh "$directory" "$fileExtention"

end
