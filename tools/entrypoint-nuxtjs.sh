#!/bin/sh

if [ -e "$(pwd)/package.json" ]; then
    if [ ! -d "$(pwd)/.nuxt" ]; then
        /opt/tools/entrypoint.sh "build"
    fi
fi

exec /opt/tools/entrypoint.sh "$@"