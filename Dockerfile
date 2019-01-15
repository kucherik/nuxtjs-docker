FROM gerardojunior/nodejs:stable
LABEL maintainer="Gerardo Junior <me@gerardo-junior.com>"

# Variables of nuxt configure
ENV HOST 0.0.0.0

EXPOSE 3000

# Copying scripts and setting entrypoint
COPY ./tools/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN sudo chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
