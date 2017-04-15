# deploy database
curdir=`pwd`
cd mongo-database
dev-env --daemon

# deploy ReST server
cd $curdir
cd rest-server
dev-env --run

docker stop cisdb
#deploy function dispatcher

# deploy Lambda server
