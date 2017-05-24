# deploy ReST server
cd `pwd`/rest-server
dev-env --webpack

docker stop webpack-server
docker rm webpack-server
