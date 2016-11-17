#!/bin/sh
# remote
ssh root@46.101.204.43 docker rm -f back-end
ssh root@46.101.204.43 docker pull u2668/node-js-sceleton
ssh root@46.101.204.43 docker run --net go-to-canteen -d --name back-end u2668/node-js-sceleton
