#!/bin/sh

# Change the working directory to GITHUB_WORKSPACE
cd "${GITHUB_WORKSPACE}" || { echo "Failed to change directory to ${GITHUB_WORKSPACE}"; exit 1; }

# Check if the necessary inputs are set
if [ -z "${GITHUB_REPOSITORY}" ]; then
  echo "GITHUB_REPOSITORY is not set. Exiting."
  exit 1
fi

if [ -z "${GITHUB_ACTOR}" ]; then
  echo "INPUT_ACTOR is not set. Exiting."
  exit 1
fi

if [ -z "${INPUT_TOKEN}" ]; then
  echo "INPUT_TOKEN is not set. Exiting."
  exit 1
fi

# Run the git-releaser update command
/git-releaser update -r "${GITHUB_REPOSITORY}" -u "${GITHUB_ACTOR}" -t "${INPUT_TOKEN}" -p "https://github.com/${GITHUB_REPOSITORY}" -g 'github' || { echo "Failed to run git-releaser update command"; exit 1; }
