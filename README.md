# neo-cli-docker

## build on source code

docker build -f ./docker/Dockerfile -t neo-cli-privnet .
docker run --rm -d -it --name neo-cli-docker -p 10001-10003:10001-10003/tcp -p 20001-20003:20001-20003/tcp -p 30001-30003:30001-30003/tcp -p 40001-40003:40001-40003/tcp txhsl/neo-cli-docker

## use existed image

docker pull txhsl/neo-cli-docker
docker run --rm -d -it --name neo-cli-docker -p 10001-10003:10001-10003/tcp -p 20001-20003:20001-20003/tcp -p 30001-30003:30001-30003/tcp -p 40001-40003:40001-40003/tcp txhsl/neo-cli-docker