ARG NODE_ENV="1.0.0"

# https://github.com/gerardo-junior/nodejs-docker
FROM gerardojunior/nodejs:$NODE_ENV

LABEL maintainer="Gerardo Junior <me@gerardo-junior.com>"
LABEL url="https://github.com/gerardo-junior/nuxtjs-docker.git"

# Variables of nuxt configure
ENV HOST 0.0.0.0
ENV NUXT_PORT 3000 

EXPOSE $NUXT_PORT

# Copying scripts and setting entrypoint
COPY ./tools /opt/tools
RUN sudo chmod -R +x /opt/tools/
ENTRYPOINT ["/bin/sh", "/opt/tools/entrypoint-nuxtjs.sh"]