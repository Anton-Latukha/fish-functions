# Function to create GIT commits of single file with commit name: "predicat: action "++"filename"
function ginc

    ga "$argv[2]"
    gc "$argv[1] $argv[2]"

end