#!/bin/sh
docker rm -f back-end
docker run --name back-end --net go-to-canteen -d u2668/node-js-sceleton

# for debug
#docker exec -it back-end /bin/bash
