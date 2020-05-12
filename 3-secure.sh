#!/bin/bash

function execute () {
  COMMAND=$1
  echo -n '$ '
  read IGNORE
  #echo -n "$ $COMMAND "
  ./typing "$ $COMMAND" 0.02
  read IGNORE
  eval $COMMAND
}

execute 'view cat.ts'

execute 'cat cat.ts'

execute 'deno cat.ts -- /etc/passwd'

execute 'deno run cat.ts --allow-read -- /etc/passwd'

execute 'deno run cat.ts --allow-read=/home -- /etc/passwd'

execute 'deno run cat.ts --allow-read=/etc -- /etc/passwd'

execute 'deno run cat.ts --allow-read=/etc,/home -- /etc/passwd'

execute 'view client.ts'

execute 'cat client.ts'

execute 'deno run client.ts'

execute 'deno run client.ts --allow-net'

execute 'deno run client.ts --allow-net=deno.land'

execute 'deno run client.ts --allow-net=deno.land,google.com'

execute 'deno run client.ts -A'

echo "Next: server.ts"

echo
