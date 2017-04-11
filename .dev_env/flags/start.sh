    docker run --name sphinx -it \
        -v $CIS_PATH:$CIS_PATH_CONTAINER \
        -v $COMMON_UTIL:$COMMON_UTIL_CONTAINER \
        -v $CODE_MANAGER:$CODE_MANAGER_CONTAINER \
        -v $REPO_PATH:$REPO_PATH_CONTAINER \
        $IMG_NAME /bin/bash