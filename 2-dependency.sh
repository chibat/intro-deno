#!/bin/bash -e

function execute () {
  COMMAND=$1
  echo -n '$ '
  read IGNORE
  #echo -n "$ $COMMAND "
  ./typing "$ $COMMAND" 0.02
  read IGNORE
  eval $COMMAND
}

rm -rf ~/.cache/deno
                                                                                                                                                                                                    
execute 'view server.ts'

execute 'cat server.ts'

execute 'deno cache server.ts'

execute 'deno info server.ts'

echo
