#!/bin/sh
mkdir -p ./content/adapters/storage
cp -r ./node_modules/ghost-storage-adapter-s3/ ./content/adapters/storage/s3
chmod 600 /usr/local/bin/docker-entrypoint.sh
sh /usr/local/bin/docker-entrypoint.sh
