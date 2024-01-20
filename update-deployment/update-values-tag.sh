#!/usr/bin/env bash
set -e

# The directories to check
repo="${REPO_WORK_PATH}/${MICROSERVICE_NAME}"

environment_dir="${repo}/${ENVIRONMENT}"

# Check if the directories exist
if [ ! -d "$repo" ] || [ ! -d "$environment_dir" ]; then
    echo "Either $repo or $environment_dir does not exist. Exiting."
    exit 1
fi

# Change to the environment directory
cd "$environment_dir"

# The file we want to update
yaml_file="values_tag.yaml"

# Make sure the file exists
if [ ! -f "$yaml_file" ]; then
    echo "$yaml_file does not exist in $environment_dir. Exiting."
    exit 1
fi

# The new tag
new_tag="${RELEASE_REF}"

# Update the file
sed -i '' "s/tag:.*/tag: \"$new_tag\"/" $yaml_file

cat $yaml_file
