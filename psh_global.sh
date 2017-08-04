#!/bin/bash

upsearch () {
  slashes=${PWD//[^\/]/}
  directory="$PWD"
  n=1
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
        return
      else
        echo "$directory/$1 is not executable. Check the permissions."
        return
      fi
    fi
    directory="$directory/.."
  done
}

upsearch psh.phar $1