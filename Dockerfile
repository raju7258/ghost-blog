FROM ghost:3.1.0

WORKDIR /var/lib/ghost

COPY ./ghost_theme /var/lib/ghost/content/themes/terra10
COPY ./ghost_config/routes.yaml /var/lib/ghost/content/settings/routes.yaml

RUN npm install -g ghost-storage-adapter-s3@2.8.0 && 
    ln -s /usr/local/lib/node_modules/ghost-storage-adapter-s3 ./current/core/server/adapters/storage/s3
