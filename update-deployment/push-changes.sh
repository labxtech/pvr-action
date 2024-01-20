#!/usr/bin/env bash
set -e

cd "${REPO_WORK_PATH}"

# Configure our identity
git config user.email "pvr-bot@printnow.app"
git config user.name "PVR Github Bot"

# Only add the stuff that we were really supposed to be changing.
git add "${REPO_WORK_PATH}/${REPOSITORY_NAME}/${ENVIRONMENT}"

# Commit the changes
git commit -m "Deployment ${RELEASE_REF} for ${REPOSITORY_NAME} on $(TZ='Asia/Dhaka' date)"