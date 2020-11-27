function rg

 # Ignore case, search hidden, ignore .git directory
 command rg -i --glob '!.git' $argv

end
