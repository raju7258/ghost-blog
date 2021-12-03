#!/bin/sh
mkdir -p ./content/adapters/storage
cp -r ./node_modules/ghost-storage-adapter-s3/ ./content/adapters/storage/s3
sh /usr/local/bin/docker-entrypoint.sh
