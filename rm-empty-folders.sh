#!/bin/dash
TARGET_FOLDER=$1

CHECK_COM_PARAMS () {

### $1 - Main $#

    if [ "$1" -gt 1 ]; then # If there are many arguments
        >&2 echo 'Command line contains' "$1" 'arguments, this script works only with one path. Use xargs if you want to invoke it for multiple'
        exit 3
    fi
    
    if [ "$1" -eq 0 ]; then # If there are zero arguments
        ASK_CONFIRMATION "Command line contains no arguments, then run it for current path: '""$PWD""'? [y/N] " 'return 0' 'EXIT'
    fi

}

ASK_CONFIRMATION () {

### $1 - Confirmation text
### $2 - then command
### $3 - else command

    echo "$1"
    read -r REPLY

    if [ "$REPLY" = 'Y' -o "$REPLY" = 'y' ]; then
      echo
      "$2"
    else
      echo
      "$3"
    fi

}

PRINT_EMPTY_FOLDERS () {

### $1 - TARGET_FOLDER to run script in

    find "$1" -type d -empty -print

    ASK_CONFIRMATION 'Do you want to delete folders above?  [y/N] ' 'return 0' 'EXIT'

}

DELETE_EMPTY_FOLDERS () {
    
    find "$1" -type d -empty -delete
    echo 'All empty folders deleted.'
    
}

EXIT () {
    echo 'Exiting...'
    exit 0
}

#####
##### MAIN
#####

CHECK_COM_PARAMS $#

if [ -z "$TARGET_FOLDER" ]; then
    TARGET_FOLDER="$PWD"
fi

PRINT_EMPTY_FOLDERS "$TARGET_FOLDER"
DELETE_EMPTY_FOLDERS "$TARGET_FOLDER"
