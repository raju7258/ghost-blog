FROM  ghost:4-alpine

WORKDIR /var/lib/ghost

COPY . /var/lib/ghost/current

