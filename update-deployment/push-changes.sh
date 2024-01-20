#!/usr/bin/env bash
set -e

cd "${REPO_WORK_PATH}"

# Configure our identity
git config user.email "pvr-bot@printnow.app"
git config user.name "PVR Github Bot"


repo="${REPO_WORK_PATH}/${MICROSERVICE_NAME}"
environment_dir="${repo}/${ENVIRONMENT}"

# Change to the environment directory
cd "$environment_dir"

# The file we want to update
yaml_file="values_tag.yaml"


# Only add the stuff that we were really supposed to be changing.
git add $yaml_file

# Commit the changes
git commit -m "Deployment ${RELEASE_REF} for ${REPOSITORY_NAME} on $(TZ='Asia/Dhaka' date)"