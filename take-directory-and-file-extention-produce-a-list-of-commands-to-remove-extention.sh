#!/usr/env bash
directory=$1
fileExtention=$2

find $directory -name "*.$fileExtention" -print0 | while read -d $'\0' file
do
  echo "mv '$file' '${file%.$fileExtention}'"
done
