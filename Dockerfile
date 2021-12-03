FROM  ghost:4-alpine

WORKDIR /var/lib/ghost

COPY . /var/lib/ghost/current

RUN npm install ghost-storage-adapter-s3

RUN mkdir -p /var/lib/ghost/content/adapters/storage

RUN mkdir -p /var/lib/ghost/content/adapters/storage/s3

RUN cp -r ./node_modules/ghost-storage-adapter-s3 /var/lib/ghost/content/adapters/storage/s3
