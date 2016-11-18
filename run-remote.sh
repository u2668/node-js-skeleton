#!/bin/sh
# remote
deployAddress="46.101.204.43"
ssh root@${deployAddress} docker rm -f back-end
ssh root@${deployAddress} docker pull u2668/node-js-sceleton
ssh root@${deployAddress} docker run --net go-to-canteen -d --name back-end u2668/node-js-sceleton
