#!/bin/sh
docker build -t u2668/node-js-sceleton .

docker push u2668/node-js-sceleton

ssh root@46.101.204.43 docker stop back-end
ssh root@46.101.204.43 docker rm back-end
ssh root@46.101.204.43 docker pull u2668/node-js-sceleton
ssh root@46.101.204.43 docker run -p 80:8080 -d --name back-end u2668/node-js-sceleton
