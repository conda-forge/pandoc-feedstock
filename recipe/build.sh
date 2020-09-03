#!/bin/bash
#set -euo pipefail
#IFS=$'\n\t'

#mkdir -p ${PREFIX}/bin
#mv bin/* ${PREFIX}/bin
#stack setup
#stack install
cabal update
cabal --version
cabal install cabal-install
cabal install
mkdir -p ${PREFIX}/bin
mv ${HOME}/.local/bin/* ${PREFIX}/bin
