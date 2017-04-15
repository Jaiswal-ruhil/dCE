dev-script run_container --name sphinx -it \
    -v $ROOT_PATH:$ROOT_PATH_CONTAINER \
    -v $COMMON_UTIL:$COMMON_UTIL_CONTAINER \
    -v $CODE_MANAGER:$CODE_MANAGER_CONTAINER \
    -v $REPO_PATH:$REPO_PATH_CONTAINER \
    -v $SPHINX_PATH:$SPHINX_PATH_CONTAINER \
    -v $CIS_PATH:$CIS_PATH_CONTAINER \
    -v $DB_DRIVER:$DB_DRIVER_CONTAINER \
    --img=$IMG $SPHINX_PATH_CONTAINER/documentation.sh 

