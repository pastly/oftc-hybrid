#!/usr/bin/env bash
export LD_LIBRARY_PATH=$(pwd)/openssl-1.0.2t/build/lib
./testnet-hybrid/bin/ircd "$@"
