#!/bin/sh

set -euo pipefail

rm -rf test_dir
mkdir test_dir

cabal sdist
cd test_dir
tar xf ../dist-newstyle/sdist/sodium-clib-1.0.18.tar.gz
cd sodium-clib-1.0.18
cabal build
