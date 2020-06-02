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
                                                                                                                                                                                                    
if [ -n "$DENO_DIR" ]
then
  rm -rf $DENO_DIR/deps
  rm -rf $DENO_DIR/gen
fi

execute 'curl -fsSL https://deno.land/x/install/install.sh | sh'

execute 'export PATH=$PATH:$HOME/.deno/bin'

execute 'deno --version'

execute 'curl https://deno.land/std@0.55.0/examples/welcome.ts'

execute 'deno run https://deno.land/std@0.55.0/examples/welcome.ts'

echo
