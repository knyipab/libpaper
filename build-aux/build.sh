#!/bin/bash
# Build for CI.
# Written by Reuben Thomas 2021-2023.
# This file is in the public domain.

set -e

./bootstrap
CONFIGURE_ARGS=(--enable-relocatable)
if [[ "$ASAN" == "yes" ]]; then
    CONFIGURE_ARGS+=(CFLAGS="-g3 -fsanitize=address -fsanitize=undefined" CXXFLAGS="-g3 -fsanitize=address -fsanitize=undefined" LDFLAGS="-fsanitize=address -fsanitize=undefined")
fi
./configure "${CONFIGURE_ARGS[@]}"
make V=1
make distcheck || ( cat ./libpaper-*/_build/sub/tests/test-suite.log; exit 1 )
