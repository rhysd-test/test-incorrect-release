#!/bin/bash

set -e

./make-release.sh

name=test-release-tar

cd release
for bin in *; do
    mv "$bin" "broken-${bin}"
    echo 'hello!' > "broken-${bin}"
done
