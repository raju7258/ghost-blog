FROM node:fermium
WORKDIR /app
RUN apt-get update
RUN npm install --global yarn
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
RUN export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
RUN yarn setup
RUN yarn dev
