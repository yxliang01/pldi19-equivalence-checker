#!/bin/bash

cd /home/equivalence/equivalence-checker

rm -rf src/ext/z3

# get links to previously compiled CVC4 / Z3
ln -s /home/equivalence/base/src/ext/z3 src/ext/z3
ln -s /home/equivalence/base/src/ext/cvc4-1.5-build src/ext/cvc4-1.5-build
ln -s /home/equivalence/base/src/ext/cvc4-1.5 src/ext/cvc4-1.5

# fix PATH
echo "PATH=\"\$HOME/stoke/bin:\$PATH\"" >> ~/.bashrc
