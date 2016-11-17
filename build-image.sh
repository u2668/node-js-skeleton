#!/bin/sh
docker build -t u2668/node-js-sceleton .
docker push u2668/node-js-sceleton

# local
#docker rm -f back-end
#docker run --name back-end --net go-to-canteen -d u2668/node-js-sceleton

# remote
#ssh root@46.101.204.43 docker rm -f back-end
#ssh root@46.101.204.43 docker pull u2668/node-js-sceleton
#ssh root@46.101.204.43 docker run --net go-to-canteen -d --name back-end u2668/node-js-sceleton

# for debug
#docker exec -it back-end /bin/bash
