#!/bin/sh

if [ -e "${WORKDIR}/package.json" ]; then
    if [ ! -d "${WORKDIR}/.nuxt" ]; then
        /opt/tools/entrypoint.sh "build"
    fi
fi

exec /opt/tools/entrypoint.sh "$@"