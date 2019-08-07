#!/bin/bash -e

function execute () {
  COMMAND=$1
  echo -n '$ '
  read IGNORE
  echo -n "$ $COMMAND "
  read IGNORE
  eval $COMMAND
}


execute 'deno cat.ts /etc/passwd'

execute 'deno --allow-read cat.ts /etc/passwd'

execute 'deno --allow-read=/home cat.ts /etc/passwd'

execute 'deno --allow-read=/etc cat.ts /etc/passwd'

execute 'deno --allow-read=/etc,/home cat.ts /etc/passwd'

execute 'view client.ts'

execute 'cat client.ts'

execute 'deno client.ts'

execute 'deno --allow-net client.ts'

execute 'deno --allow-net=deno.land client.ts'

execute 'deno --allow-net=deno.land,google.com client.ts'

execute 'deno -A client.ts'

echo "Next: server.ts"

echo
