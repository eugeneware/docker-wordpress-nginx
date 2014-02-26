#!/bin/bash
STATIC=${1:-/tmp/wordpress}
PORT=${2:-80}
echo "Storing database & files in $STATIC and serving on $PORT"
echo "./run.sh [persistent-dir] [port] to customize."
CONT=`docker run -d wordpress bash`
if [ ! -d "$STATIC/www" ]; then
    docker cp $CONT:/usr/share/nginx/www $STATIC
fi
if [ ! -d "$STATIC/mysql" ]; then
    docker cp $CONT:/var/lib/mysql $STATIC
fi
docker run -i -t -p $PORT:80 -v $STATIC/www:/usr/share/nginx/www -v $STATIC/mysql:/var/lib/mysql wordpress
