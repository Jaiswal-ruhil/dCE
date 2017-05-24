# deploy database
curdir=`pwd`
cd mongo-database
dev-env --daemon

# deploy ReST server
cd $curdir/rest-server
dev-env --run

docker stop cisdb
