#!/bin/bash

upsearch () {
  slashes=${PWD//[^\/]/}
  directory="$PWD"
  n = 1
  while [[ "$n" -le 2 ]]
  do
    # Cancel if the directory to search in does not exist
    if [[ ! -d "$directory" ]]
    then
      return 0
    fi
    
    # Check is this really is a file
    if [[ -f "$directory/$1" ]]
    then
      # Check if the file is executable
      if [[ -x "$directory/$1" ]]
      then
        cd "$directory" 
        ./$1 $2 
        return 1
      else
        echo "$directory/$1 is not executable. Check the permissions."
        return 1
      fi
    fi
    directory="$directory/.."
  done
}

result=$(upsearch psh.phar $1)
[ "$result" == "0" ]  upsearch psh $1