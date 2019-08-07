#!/bin/bash -e

function execute () {
  COMMAND=$1
  echo -n '$ '
  read IGNORE
  echo -n "$ $COMMAND "
  read IGNORE
  eval $COMMAND
}

rm -rf ~/.cache/deno
                                                                                                                                                                                                    
execute 'curl -fsSL https://deno.land/x/install/install.sh | sh'

execute 'export PATH=/home/tomofumi_chiba/.deno/bin/deno:$PATH'

execute 'deno version'

execute 'curl https://deno.land/welcome.ts'

execute 'deno https://deno.land/welcome.ts'

echo
