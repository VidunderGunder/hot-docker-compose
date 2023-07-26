#!/bin/bash

REPOS=("docker-dotnet" "docker-react" "docker-express" "docker-bun")
BASE_URL="https://github.com/VidunderGunder"

for repo in "${REPOS[@]}"
do
  if [ ! -d "$repo" ]; then
    git clone "${BASE_URL}/${repo}.git"
  else
    echo "Directory ${repo} already exists. Skipping clone."
  fi
done
