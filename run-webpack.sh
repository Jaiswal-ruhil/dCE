# deploy ReST server
cd $curdir/rest-server
dev-env --webpack

docker stop webpack-server
docker rm webpack-server
