# deploy database
curdir=`pwd`
cd mongo-database
dev-env --daemon

# create js module from webpack
#cd $curdir
#./run-webpack.sh

# deploy ReST server
cd $curdir/rest-server
dev-env --run

docker stop cisdb
