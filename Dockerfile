FROM  public.ecr.aws/e5s7u0b5/ghost-4-alpine:latest

WORKDIR /var/lib/ghost

COPY . /var/lib/ghost/current

COPY config.production.json /var/lib/ghost/

RUN npm install ghost-storage-adapter-s3

RUN mkdir -p /var/lib/ghost/content/adapters/storage/s3/

RUN cp -r ./node_modules/ghost-storage-adapter-s3/ /var/lib/ghost/content/adapters/storage/s3/


#RUN mkdir -p /var/lib/ghost/content/adapters/storage

#RUN mkdir -p /var/lib/ghost/content/adapters/storage/s3

#RUN cp -r /var/lib/ghost/current/node_modules/ghost-storage-base /var/lib/ghost/content/adapters/storage/s3
