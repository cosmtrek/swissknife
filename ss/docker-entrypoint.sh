#!/bin/sh

set -e

exec ss-server -s $SERVER_ADDR \
               -p $SERVER_PORT \
               -k $PASSWORD \
               -m $METHOD \
               -t $TIMEOUT \
               --fast-open \
               --plugin obfs-server \
               --plugin-opts "obfs=http" \
               -u
