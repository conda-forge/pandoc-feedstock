#!/bin/bash
#set -euo pipefail
#IFS=$'\n\t'
echo $BUILD_PREFIX
echo "----------------\n"
ls $BUILD_PREFIX
echo "----------------\n"
ls $SRC_PREFIX
echo "----------------\n"
ls $BUILD_PREFIX/lib/ghc-8.2.2/include
echo "----------------\n"
ghc --version
#mkdir -p ${PREFIX}/bin
#mv bin/* ${PREFIX}/bin
#stack setup
#stack install
cabal update
cabal --version
cabal configure --prefix=$(BUILD_PREFIX) 
#--bindir=DIR --libdir=DIR \
#  --datadir=DIR --libsubdir=DIR --datasubdir=DIR --docdir=DIR \
#  --htmldir=DIR --program-prefix=PREFIX --program-suffix=SUFFIX \
#  --mandir=DIR --flags=FLAGSPEC --enable-tests
#cabal install cabal-install
cabal install

mkdir -p ${PREFIX}/bin
mv ${HOME}/.local/bin/* ${PREFIX}/bin
