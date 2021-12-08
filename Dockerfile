FROM ghost:4-alpine

WORKDIR /var/lib/ghost

COPY . /var/lib/ghost/current

##########
#COPY config.production.json /var/lib/ghost/
### Added by Ahhmed
#RUN npm install ghost-storage-adapter-s3 \
   # && mkdir -p ./content.orig/adapters/storage \
    #&& cp -vr ./node_modules/ghost-storage-adapter-s3 ./content.orig/adapters/storage/s3
############
RUN npm install ghost-storage-adapter-s3

RUN mkdir -p ./content/adapters/storage && cp -r ./node_modules/ghost-storage-adapter-s3 ./content/adapters/storage/s3

#RUN apk update

#RUN echo "Healthcheck success" > /var/lib/ghost/current/robots.txt

#EXPOSE 2368
