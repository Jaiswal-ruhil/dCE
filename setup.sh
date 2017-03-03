# Check for required packages
## is docker available:
docker --version
exit_status=$?
if [[ $exit_status -ne 0 ]]; then
  echo "* docker not available"
  echo "* make sure docker can be accessed without sudo"
else
  echo "Docker installed properly"
fi


# get setup_dev_env
dev-env --version
exit_status=$?
if [[ $exit_status -ne 0 ]]; then
  echo "* dev-env not available"
  echo "* make sure dev-env can be accessed"
else
  echo "dev-env installed properly"
fi

