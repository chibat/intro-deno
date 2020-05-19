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

#execute 'view cat.ts'

execute 'cat cat.ts'

execute 'deno run cat.ts /etc/passwd'

execute 'deno run --allow-read cat.ts /etc/passwd'

execute 'deno run --allow-read=/home cat.ts /etc/passwd'

execute 'deno run --allow-read=/etc cat.ts /etc/passwd'

execute 'deno run --allow-read=/etc,/home cat.ts /etc/passwd'

#execute 'view client.ts'

execute 'cat client.ts'

execute 'deno run client.ts'

execute 'deno run --allow-net client.ts'

execute 'deno run --allow-net=deno.land client.ts'

execute 'deno run --allow-net=deno.land,google.com client.ts'

execute 'deno run -A client.ts'

echo "Next: server.ts"

echo
