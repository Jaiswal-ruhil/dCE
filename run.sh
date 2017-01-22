# deploy database
curdir=`pwd`
cd mongo-database
dev-env -t

# deploy ReST server
cd $curdir
cd rest-server
dev-env -t

#deploy function dispatcher

# deploy Lambda server
