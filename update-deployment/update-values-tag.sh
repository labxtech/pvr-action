#!/usr/bin/env bash

set -e

ls -larth

# Let's test a few assumptions from our inputs on the deployment repo we just checked out
if [ ! -d "${REPO_WORK_PATH}/${MICROSERVICE_NAME}" ]; then
    echo "Repo ${REPO_WORK_PATH}/${MICROSERVICE_NAME} does not exist. Exiting."
    exit 1
fi

cd "${REPO_WORK_PATH}/${REPOSITORY_NAME}"
if [ ! -d "${ENVIRONMENT}" ]; then
    echo "${ENVIRONMENT} does not exist in deployment repo or not a valid env spec. Exiting."
    exit 1
fi



