#!/bin/sh

XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
touch "$XAUTH"
xauth nlist "$DISPLAY" | sed -e 's/^..../ffff/' | xauth -f "$XAUTH" nmerge -

docker run \
    --privileged \
    --ipc=host \
    --net=host \
    --env=DISPLAY \
    --env='TZ=America/New_York' \
    --volume="$XSOCK:$XSOCK:rw" \
    --volume="$XAUTH:$XAUTH:rw" \
    --env="XAUTHORITY=${XAUTH}" \
    --rm -d \
    vmwareview \
    --serverURL=example.com
