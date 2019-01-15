FROM gerardojunior/node.environment:stable
LABEL maintainer="Gerardo Junior <me@gerardo-junior.com>"

# Variables of nuxt configure
ENV HOST 0.0.0.0

EXPOSE 3000

CMD ['start']