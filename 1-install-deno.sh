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
                                                                                                                                                                                                    
execute 'curl -fsSL https://deno.land/x/install/install.sh | sh'

execute 'export PATH=/home/tomofumi_chiba/.local/bin:$PATH'

execute 'deno --version'

execute 'curl https://deno.land/std/examples/welcome.ts'

execute 'deno run https://deno.land/std/examples/welcome.ts'

echo
