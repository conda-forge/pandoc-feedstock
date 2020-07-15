#!/bin/bash
#set -euo pipefail
#IFS=$'\n\t'
echo ${PREFIX}
#mkdir -p ${PREFIX}/bin
#mv bin/* ${PREFIX}/bin
stack setup
stack install

echo ${PREFIX}
#mkdir -p ${PREFIX}/bin
#mv bin/* ${PREFIX}/bin
