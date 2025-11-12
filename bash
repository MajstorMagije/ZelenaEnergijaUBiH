#!/bin/bash

# Set your variables
REPO_URL="https://github.com/MajstorMagije/ZelenaEnergijaUBiH.git"
BRANCH="main"  # Change to 'gh-pages' if you want to deploy to that branch instead
COMMIT_MSG="Deploy website"

# Make sure the repo is initialized
git init

# Add the remote if it doesn't already exist
if ! git remote | grep origin > /dev/null; then
    git remote add origin "$REPO_URL"
fi

# Add all files (adjust the path as needed)
git add .

# Commit changes
git commit -m "$COMMIT_MSG"

# Pull latest (handle merging, skip if first push)
git pull origin $BRANCH --allow-unrelated-histories

# Push to your repo
git push origin $BRANCH

echo "Website files pushed to $REPO_URL (branch: $BRANCH)"
