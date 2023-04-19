#!/usr/bin/env bash

COMMIT_MESSAGE="$1"
FILES="${@:2}"

# Check if inside a git repository
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
  echo "Not in a git repository. Please run the script inside a valid git repository."
  exit 1
fi

# Configure git
git config user.name "embed-md bot"
git config user.email "embed-md-bot@urmzd.com"
git config --add safe.directory "$(git rev-parse --show-toplevel)"
git config pull.rebase true
git config rebase.autoStash true

# Embed files
echo "Embedding files: $FILES"
npx embedme "$FILES"

# Commit changes
echo "Commiting with message: $COMMIT_MESSAGE"
git pull
git add "$FILES"
git commit -m "$COMMIT_MESSAGE"
git push
