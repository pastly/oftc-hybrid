#!/bin/sh
set -eu

if [ -z "$*" ]; then
  # set -- --prefix=/home/oftc/oftc/testnet-hybrid
  set -- --prefix=$(pwd)/testnet-hybrid
fi

set -x

export CC=gcc-6
# export LD_LIBRARY_PATH="$(pwd)/openssl-1.0.2t/build/lib"
# export CFLAGS="-Wl,-rpath,$(pwd)/openssl-1.0.2t/build/lib"

# ./configure \
#   --enable-openssl \
#   --with-openssl=$(pwd)/openssl-1.0.2t/build \
#   --disable-profile \
#   --enable-assert \
#   --enable-zlib \
#   --with-nicklen=30 \
#   --with-topiclen=390 \
#   --disable-halfops \
#   --enable-shared-modules \
#   "$@"

make -j
make install
