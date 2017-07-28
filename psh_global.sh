#!/bin/sh

function upsearch {
  slashes=${PWD//[^\/]/}
  directory="$PWD"
  for (( n=${#slashes}; n>0; --n ))
  do
    test -x "$directory/$1" && cd "$directory" && ./$1 $2 && return 
    directory="$directory/.."
  done
}

upsearch psh.phar $1