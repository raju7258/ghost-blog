FROM ghost:3.1.0

WORKDIR /var/lib/ghost

COPY . /var/lib/ghost/current

