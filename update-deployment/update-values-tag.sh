#!/usr/bin/env bash

set -e

# Let's test a few assumptions from our inputs on the deployment repo we just checked out
if [ ! -d "${REPO_WORK_PATH}/${MICROSERVICE_NAME}" ]; then
    echo "Repo ${REPO_WORK_PATH}/${MICROSERVICE_NAME} does not exist. Exiting."
    exit 1
fi

if [ ! -d "${REPO_WORK_PATH}/${MICROSERVICE_NAME}/${ENVIRONMENT}" ]; then
    echo "${REPO_WORK_PATH}/${MICROSERVICE_NAME}/${ENVIRONMENT} does not exist. Exiting."
    exit 1
fi




