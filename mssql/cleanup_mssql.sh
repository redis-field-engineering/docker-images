#!/bin/bash

version="${1:-2019-latest}"
db_port="${2:-1433}"
cleanup="${3:-yes}"

container_name="mssql-$version-$(hostname)-$db_port"

# delete the existing container if it exist
if [ "${cleanup}" = "yes" ]; then
  echo "Stopping and removing ${container_name} docker container from $(hostname)."
  docker container stop "${container_name}"; docker container rm "${container_name}";
else
  echo "Skipping removing ${container_name} docker container from $(hostname)."
fi

echo "done"