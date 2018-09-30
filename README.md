# neo-cli-docker

This project provide a base docker image to build a test image for Neo private blockchain, which only contains 4 neo-cli nodes and the height is 0. So if you want to use the base image, get the NEO first with the wallet files in ./wallets.

You can use the neo-gui client in the project to connect to the blockchain in the docker, which is configed already.

## build on source code

docker build -f ./docker/Dockerfile -t neo-cli-privnet .

docker run --rm -d -it --name neo-cli-docker -p 10001-10003:10001-10003/tcp -p 20001-20003:20001-20003/tcp -p 30001-30003:30001-30003/tcp -p 40001-40003:40001-40003/tcp txhsl/neo-cli-docker

## use existed image

[Here is the repo](https://hub.docker.com/r/txhsl/neo-cli-docker/)

docker pull txhsl/neo-cli-docker

docker run --rm -d -it --name neo-cli-docker -p 10001-10003:10001-10003/tcp -p 20001-20003:20001-20003/tcp -p 30001-30003:30001-30003/tcp -p 40001-40003:40001-40003/tcp txhsl/neo-cli-docker

## tips

if you run the docker in a virtual machine, remember expose ports 10001, 20001, 30001, 40001 for the rpc connection.